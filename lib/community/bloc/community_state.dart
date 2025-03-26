

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/repositories/community_repository.dart';

part 'community_state.freezed.dart';

@freezed
class CommunityState with _$CommunityState {
  const factory CommunityState.initial() = _Initial;
  const factory CommunityState.loading() = _Loading;
  const factory CommunityState.success(CommunityEntity communityEntity) = _Success;
  const factory CommunityState.failure(String error) = _Failure;
}