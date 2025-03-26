import 'package:uniun/domain/entities/comment/comment_entity.dart';

class CommentViewTree {
  /// The comment information
  CommentEntity? commentEntity;

  /// The list of children for this comment
  List<CommentViewTree> replies;

  /// The depth of the comment. It starts from 0, which is a direct reply to the post
  int level;

  String datePostedOrEdited;

  CommentViewTree({
    this.datePostedOrEdited = "",
    this.commentEntity,
    this.replies = const [],
    this.level = 0,
  });
}
