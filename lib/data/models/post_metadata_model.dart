
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:uniun/core/enum/user_metadata.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';

part "post_metadata_model.g.dart";

@Collection(ignore: {'copyWith'})
@Name('PostModel')
@JsonSerializable()
class PostModel {

  final Id id;
  final int? postID;
  final int? communityID;
  final String? title;
  final String? type;
  final String? body;
  final PostVotedEmbedded? postVotes;
  final UserMetadataEmbedded? user;
  final DateTime? created;

  PostModel({required this.id, this.postID, this.communityID, this.title, this.type, this.body, this.postVotes, this.user, this.created});

  DateTime? updated;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}

@embedded
@JsonSerializable()
class PostVotedEmbedded {
  int? upVote;
  int? downVote;

  PostVotedEmbedded({this.upVote, this.downVote});

  factory PostVotedEmbedded.fromJson(Map<String, dynamic> json) => _$PostVotedEmbeddedFromJson(json);
} 

@embedded
@JsonSerializable()
class UserMetadataEmbedded {
  int? id;
  String? username;
  String? name;
  String? email;
  int? walletID;

  UserMetadataEmbedded({this.id, this.username, this.name, this.email, this.walletID});

  factory UserMetadataEmbedded.fromJson(Map<String, dynamic> json) => _$UserMetadataEmbeddedFromJson(json);
} 

extension PostModelExtension on PostModel {
  PostEntity toDomain() => PostEntity(
    postID: postID,
    communityID: communityID,
    body: body,
    title: title,
    type: postTypeFromString(type),
    creator: UserMetaData(id: user?.id, username: user?.username),
    postVotes: PostVotes(upVote: postVotes?.upVote ?? 0 , downVote: postVotes?.downVote ?? 0),
    created: created,
  );
}

PostType postTypeFromString(String? type) {
  if (type == PostType.IMAGE.name) {
    return PostType.IMAGE;
  }
  if (type == PostType.LINK.name) {
    return PostType.LINK;
  }
  return PostType.TEXT;
}
