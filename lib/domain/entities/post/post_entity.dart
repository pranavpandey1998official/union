import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/core/enum/user_metadata.dart';

part 'post_entity.freezed.dart';

@freezed
class PostEntity with _$PostEntity {
  const factory PostEntity({
    required int? postID,
    required String? title,
    required PostType? type,
    required String? body,
    required DateTime? created,
    required int? communityID,
    required PostVotes? postVotes,
    required UserMetaData? creator,
    @Default(false) locked,
    @Default(false) bool nsfw,
    @Default(false) bool saved,
    @Default(false) bool read,
    @Default(false) bool subscribed,
    @Default(false) bool deleted,
    String? thumbnailUrl,
  }) = _PostEntity;
}

enum PostType {
  TEXT,
  LINK,
  IMAGE
} 

@freezed
class PostVotes with _$PostVotes {
  const factory PostVotes({
    required int? upVote,
    required int? downVote,
  }) = _PostVotes;
}

