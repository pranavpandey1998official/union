part of 'post_bloc.dart';

enum PostStatus {
  initial,
  loading,
  refreshing,
  success,
  empty,
  failure,
  searchInProgress,
}

class PostState extends Equatable {
  const PostState({
    this.status = PostStatus.initial,
    this.postId,
    this.postViewMedia,
    this.comments = const [],
    this.commentResponseMap = const <int, CommentEntity>{},
    this.commentPage = 1,
    this.commentCount = 0,
    this.communityId,
    this.moderators,
    this.crossPosts,
    this.hasReachedCommentEnd = false,
    this.errorMessage,
    this.sortType,
    this.sortTypeIcon,
    this.selectedCommentId,
    this.selectedCommentPath,
    this.newlyCreatedCommentId,
    this.moddingCommentId = -1,
    this.viewAllCommentsRefresh = false,
    this.navigateCommentIndex = 0,
    this.navigateCommentId = 0,
    this.commentMatches,
  });

  final PostStatus status;

  final bool viewAllCommentsRefresh;

  final CommentSortType? sortType;
  final IconData? sortTypeIcon;

  final int? postId;
  final int? communityId;
  final List<CommunityModeratorView>? moderators;
  final List<PostEntity>? crossPosts;
  final PostViewMedia? postViewMedia;

  // Comment related data
  final List<CommentViewTree> comments;
  final Map<int, CommentEntity> commentResponseMap;
  final int commentPage;
  final int commentCount;
  final bool hasReachedCommentEnd;
  final int? selectedCommentId;
  final int? newlyCreatedCommentId;
  final String? selectedCommentPath;

  // This is to track what comment is being restored or deleted so we can
  // show a spinner indicator that thunder is working on it
  final int moddingCommentId;

  final String? errorMessage;

  final int navigateCommentIndex;
  final List<CommentEntity>? commentMatches;

  // This exists purely for forcing the bloc to refire
  // even if the comment index doesn't change
  final int navigateCommentId;

  PostState copyWith({
    required PostStatus status,
    int? postId,
    PostViewMedia? postViewMedia,
    List<CommentViewTree>? comments,
    Map<int, CommentEntity>? commentResponseMap,
    int? commentPage,
    int? commentCount,
    bool? hasReachedCommentEnd,
    int? communityId,
    List<CommunityModeratorView>? moderators,
    List<PostEntity>? crossPosts,
    String? errorMessage,
    CommentSortType? sortType,
    IconData? sortTypeIcon,
    int? selectedCommentId,
    String? selectedCommentPath,
    int? newlyCreatedCommentId,
    int? moddingCommentId,
    bool? viewAllCommentsRefresh = false,
    int? navigateCommentIndex,
    int? navigateCommentId,
    List<CommentEntity>? commentMatches,
  }) {
    return PostState(
      status: status,
      postId: postId ?? this.postId,
      postViewMedia: postViewMedia ?? this.postViewMedia,
      comments: comments ?? this.comments,
      commentResponseMap: commentResponseMap ?? this.commentResponseMap,
      commentPage: commentPage ?? this.commentPage,
      commentCount: commentCount ?? this.commentCount,
      hasReachedCommentEnd: hasReachedCommentEnd ?? this.hasReachedCommentEnd,
      communityId: communityId ?? this.communityId,
      moderators: moderators ?? this.moderators,
      crossPosts: crossPosts ?? this.crossPosts,
      errorMessage: errorMessage ?? this.errorMessage,
      sortType: sortType ?? this.sortType,
      sortTypeIcon: sortTypeIcon ?? this.sortTypeIcon,
      selectedCommentId: selectedCommentId,
      selectedCommentPath: selectedCommentPath,
      newlyCreatedCommentId: newlyCreatedCommentId,
      moddingCommentId: moddingCommentId ?? this.moddingCommentId,
      viewAllCommentsRefresh: viewAllCommentsRefresh ?? false,
      navigateCommentIndex: navigateCommentIndex ?? 0,
      navigateCommentId: navigateCommentId ?? 0,
      commentMatches: commentMatches ?? this.commentMatches,
    );
  }

  @override
  List<Object?> get props => [
        status,
        postId,
        postViewMedia,
        comments,
        commentPage,
        commentCount,
        communityId,
        // moderators,
        // crossPosts,
        errorMessage,
        hasReachedCommentEnd,
        sortType,
        sortTypeIcon,
        selectedCommentId,
        selectedCommentPath,
        newlyCreatedCommentId,
        viewAllCommentsRefresh,
        moddingCommentId,
        navigateCommentIndex,
        navigateCommentId,
        commentMatches,
      ];
}
