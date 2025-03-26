
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/common/constants.dart';


part 'community_entity.freezed.dart';


@freezed
class CommunityEntity with _$CommunityEntity {
  const factory CommunityEntity({
    required int communityId,
    @Default(0) int memberCount,
    @Default(false) bool isMember,
    @Default(false) bool isBlocked,
    @Default('') String about,
    @Default('') String? name,
    required int? presidentId,
    required String? walletId,
    required int? genesisId,
    required DateTime? created,
    String? icon,
  }) = _CommunityEntity;
}