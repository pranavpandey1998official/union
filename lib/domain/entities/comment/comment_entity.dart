


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/core/enum/user_metadata.dart';

part 'comment_entity.freezed.dart';

@freezed
class CommentEntity with _$CommentEntity {
  const factory CommentEntity ({
    required int commentID,
    required int postID,
    required int? parentCommentID,
    required UserMetaData creator,
    required CommentVotes commentVotes,
    required String body,
    required int depth,
    required DateTime created,
    required String path,
    required int originalDepth,
    DateTime? updated,
    @Default(0) int childCount,
    @Default(false) bool saved,
    @Default(false) bool deleted,
  }) = _CommentEntity;
}


@freezed
class CommentVotes with _$CommentVotes {
  const factory CommentVotes({
    required int? upVote,
    required int? downVote,
  }) = _CommentVotes;
}
