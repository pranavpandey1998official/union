



import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';


@freezed
@Collection(ignore: {'copyWith'})
@Name('Comment')
class CommentModel with _$CommentModel {
  const factory CommentModel({
    @JsonKey(name: 'id') int? commentId,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'created') DateTime? created,
    @JsonKey(name: 'parentPostID') int? parentPostID,
    @JsonKey(name: 'parentCommentID') int? parentCommentID,
    @JsonKey(name: 'communityID') int? communityID,
    @JsonKey(name: 'immediateChildrenCount') int? immediateChildren,
    @JsonKey(name: 'pathFromRoot') String? pathFromRoot,
    @JsonKey(name: 'upVote') int? memberCount,
    @JsonKey(name: 'downVote') bool? isMember,
    @JsonKey(name: 'creator') bool? isBlocked,
  }) = _CommentModel;
  
  Id get id => Isar.autoIncrement;
  
  const CommentModel._();

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);
}