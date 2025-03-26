import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_input.freezed.dart';

@freezed
class GetSubCommentsInput with _$GetSubCommentsInput {
  const factory GetSubCommentsInput({
    required int commentID,
    @Default(1) int depth,
  }) = _GetSubCommentsInput;
}

@freezed
class GetCommentInput with _$GetCommentInput {
  const factory GetCommentInput({
    required int commentID,
  }) = _GetCommentInput;
}