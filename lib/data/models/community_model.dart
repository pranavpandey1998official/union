



import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';

part 'community_model.g.dart';


@Collection(ignore: {'copyWith'})
@Name('Community')
@JsonSerializable()
class CommunityModel {
  final Id id;
  final String? about;
  final String? name;
  final int? presidentId;
  final String? walletId;
  final int? walletVoteTokens;
  final int? genesisId;
  int? memberCount;
  bool? isMember;
  final DateTime? created;
  final bool? isBlocked;

  CommunityModel({required this.id, this.about, this.name, this.presidentId, this.walletId, this.walletVoteTokens, this.genesisId, this.memberCount, this.isMember, this.created, this.isBlocked});

  DateTime? updated;
  factory CommunityModel.fromJson(Map<String, dynamic> json) => _$CommunityModelFromJson(json);
}

extension CommunityExtension on CommunityModel {
  CommunityEntity toDomain() => CommunityEntity(
    communityId: id ?? 0,
    memberCount: memberCount ?? 0,
    isMember: isMember ?? false,
    about: about ?? '',
    name: name,
    presidentId: presidentId,
    walletId: walletId,
    genesisId: genesisId,
    created: created,
  );
}