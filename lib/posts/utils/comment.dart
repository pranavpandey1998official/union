import 'dart:ffi';


import 'package:uniun/core/models/comment_view_tree.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/utils/date_time.dart';

// Optimistically updates a comment
CommentEntity optimisticallyVoteComment(CommentViewTree commentViewTree, int voteType) {
  int newScore = 0;
  int? existingVoteType = 0;

  switch (voteType) {
    case -1:
      newScore--;
      break;
    case 1:
      newScore++;
      break;
    case 0:
      // Determine score from existing
      if (existingVoteType == -1) {
        newScore++;
      } else if (existingVoteType == 1) {
        newScore--;
      }
      break;
  }
  return commentViewTree.commentEntity!.copyWith(commentVotes: commentViewTree.commentEntity!.commentVotes.copyWith(),);
}

// /// Logic to vote on a comment
// Future<CommentEntity> voteComment(int commentId, int score) async {
//   Account? account = await fetchActiveProfileAccount();
//   LemmyApiV3 lemmy = LemmyClient.instance.lemmyApiV3;

//   if (account?.jwt == null) throw Exception('User not logged in');

//   CommentResponse commentResponse = await lemmy.run(CreateCommentLike(
//     auth: account!.jwt!,
//     commentId: commentId,
//     score: score,
//   ));

//   CommentEntity updatedCommentView = commentResponse.commentView;
//   return updatedCommentView;
// }

/// Logic to save a comment
// Future<CommentEntity> saveComment(int commentId, bool save) async {
//   Account? account = await fetchActiveProfileAccount();
//   LemmyApiV3 lemmy = LemmyClient.instance.lemmyApiV3;

//   if (account?.jwt == null) throw Exception('User not logged in');

//   CommentResponse commentResponse = await lemmy.run(SaveComment(
//     auth: account!.jwt!,
//     commentId: commentId,
//     save: save,
//   ));

//   CommentEntity updatedCommentView = commentResponse.commentView;
//   return updatedCommentView;
// }

/// Builds a tree of comments given a flattened list
List<CommentViewTree> buildCommentViewTree(List<CommentEntity> comments, {bool flatten = false}) {
  Map<String, CommentViewTree> commentMap = {};

  // Create a map of CommentEntity objects using the comment path as the key
  for (CommentEntity commentEntity in comments) {
    bool hasBeenEdited = commentEntity.updated != null ? true : false;
    String commentTime = hasBeenEdited ? commentEntity.updated!.toIso8601String() : commentEntity.created.toIso8601String();

    commentMap[commentEntity.path!] = CommentViewTree(
      datePostedOrEdited: formatTimeToString(dateTime: commentTime),
      commentEntity: cleanDeletedCommentView(commentEntity),
      replies: [],
      level: commentEntity.originalDepth,
    );
  }

  if (flatten) {
    return commentMap.values.toList();
  }

  // Build the tree structure by assigning children to their parent comments
  for (CommentViewTree commentView in commentMap.values) {
    List<String> pathIds = commentView.commentEntity!.path.split('.');
    String parentPath = pathIds.getRange(0, pathIds.length - 1).join('.');

    CommentViewTree? parentCommentView = commentMap[parentPath];

    if (parentCommentView != null) {
      parentCommentView.replies.add(commentView);
    }
  }

  // Return the root comments (those with an empty or comment path)
  return commentMap.values.where((commentView) => commentView.commentEntity!.path.isEmpty || commentView.commentEntity!.path == '${commentView!.commentEntity?.commentID}').toList();
}

List<CommentViewTree> insertNewComment(List<CommentViewTree> comments, CommentEntity commentView) {
  List<String> parentIds = commentView.path.split('.');
  String commentTime = commentView.created.toIso8601String();

  CommentViewTree newCommentTree = CommentViewTree(
    datePostedOrEdited: formatTimeToString(dateTime: commentTime),
    commentEntity: commentView,
    replies: [],
    level: commentView.path.split('.').length - 1,
  );

  if (parentIds[1] == commentView.commentID.toString()) {
    comments.insert(0, newCommentTree);
    return comments;
  }

  String parentId = parentIds[parentIds.length - 2];
  CommentViewTree? parentComment = findParentComment(1, parentIds, parentId.toString(), comments);

  // TODO: surface some sort of error maybe if for some reason we fail to find parent comment
  if (parentComment != null) {
    parentComment.replies.insert(0, newCommentTree);
  }

  return comments;
}


CommentViewTree? findParentComment(int index, List<String> parentIds, String targetId, List<CommentViewTree> comments) {
  for (CommentViewTree existing in comments) {
    if (existing!.commentEntity?.commentID.toString() != parentIds[index]) {
      continue;
    }

    if (targetId == existing.commentEntity?.commentID.toString()) {
      return existing;
    }

    return findParentComment(index + 1, parentIds, targetId, existing.replies);
  }

  return null;
}


// List<int> findCommentIndexesFromCommentViewTree(List<CommentViewTree> commentTrees, int commentId, [List<int>? indexes]) {
//   indexes ??= [];

//   for (int i = 0; i < commentTrees.length; i++) {
//     if (commentTrees[i].commentView!.comment.id == commentId) {
//       return [...indexes, i]; // Return a copy of the indexes list with the current index added
//     }

//     indexes.add(i); // Add the current index to the indexes list

//     List<int> foundIndexes = findCommentIndexesFromCommentViewTree(commentTrees[i].replies, commentId, indexes);

//     if (foundIndexes.isNotEmpty) {
//       return foundIndexes;
//     }

//     indexes.removeLast(); // Remove the last index when backtracking
//   }

//   return []; // Return an empty list if the target ID is not found
// }

// Used for modifying the comment current comment tree so we don't have to refresh the whole thing
bool updateModifiedComment(List<CommentViewTree> commentTrees, CommentEntity moddedComment) {
  for (int i = 0; i < commentTrees.length; i++) {
    if (commentTrees[i].commentEntity?.commentID == moddedComment.commentID) {
      commentTrees[i].commentEntity = moddedComment;
      return true;
    }

    bool done = updateModifiedComment(commentTrees[i].replies, moddedComment);
    if (done) {
      return done;
    }
  }

  return false;
}

CommentEntity cleanDeletedCommentView(CommentEntity commentEntity) {
  if (!commentEntity.deleted) {
    return commentEntity;
  }

  return commentEntity.copyWith(body: "_deleted by creator_");
}

CommentEntity convertToDeletedComment(CommentEntity comment) {
  return comment.copyWith(body: "_deleted by creator_"); 
}

/// Creates a placeholder comment from the given parameters. This is mainly used to display a preview of the comment
/// with the applied settings on Settings -> Appearance -> Comments page.
// CommentEntity createExampleComment({
//   int? id,
//   String? path,
//   String? commentContent,
//   int? commentCreatorId,
//   int? commentScore,
//   int? commentUpvotes,
//   int? commentDownvotes,
//   DateTime? commentPublished,
//   int? commentChildCount,
//   String? personName,
//   bool? isPersonAdmin,
//   bool? isBotAccount,
//   bool? saved,
// }) {
//   return CommentEntity(
//     comment: Comment(
//       id: id ?? 1,
//       creatorId: commentCreatorId ?? 1,
//       postId: 1,
//       content: commentContent ?? 'This is an example comment',
//       removed: false,
//       published: commentPublished ?? DateTime.now(),
//       deleted: false,
//       apId: '',
//       local: false,
//       path: path ?? '0.1',
//       distinguished: false,
//       languageId: 1,
//     ),
//     creator: Person(
//       id: 1,
//       name: personName ?? 'Example Username',
//       banned: false,
//       published: DateTime.now(),
//       actorId: 'https://lemmy.world/u/testuser',
//       local: false,
//       deleted: false,
//       botAccount: isBotAccount ?? false,
//       instanceId: 1,
//       admin: isPersonAdmin ?? false,
//     ),
//     post: Post(
//       id: 1,
//       name: 'Example Title',
//       creatorId: 1,
//       communityId: 1,
//       removed: false,
//       locked: false,
//       published: DateTime.now(),
//       deleted: false,
//       nsfw: false,
//       apId: '',
//       local: false,
//       languageId: 1,
//       featuredCommunity: false,
//       featuredLocal: false,
//     ),
//     community: Community(
//       id: 1,
//       name: 'Example Community',
//       removed: false,
//       published: DateTime.now(),
//       deleted: false,
//       nsfw: false,
//       local: false,
//       title: '',
//       actorId: '',
//       hidden: false,
//       postingRestrictedToMods: false,
//       instanceId: 1,
//     ),
//     counts: CommentAggregates(
//       id: 1,
//       commentId: 1,
//       score: commentScore ?? 1,
//       upvotes: commentUpvotes ?? 1,
//       downvotes: commentDownvotes ?? 1,
//       published: DateTime.now(),
//       childCount: commentChildCount ?? 0,
//     ),
//     creatorBannedFromCommunity: false,
//     subscribed: SubscribedType.notSubscribed,
//     saved: saved ?? false,
//     creatorBlocked: false,
//   );
// }
