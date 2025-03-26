import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_input.freezed.dart';

@freezed
class GetPostInput with _$GetPostInput {
  const factory GetPostInput({
    required int postID,
  }) = _GetPostInput;
}

@freezed
class GetAllCommentsForPostInput with _$GetAllCommentsForPostInput {
  const factory GetAllCommentsForPostInput({
    required int postID,
    required int depth,
  }) = _GetAllCommentsForPostInput;
}

@freezed
class CreatePostInput with _$CreatePostInput {
  const factory CreatePostInput({
    required int communityID,
    required String title,
    required String type,
    required bool isNSFW,
    required String body,
  }) = _CreatePostInput;
}