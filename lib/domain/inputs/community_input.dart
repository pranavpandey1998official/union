
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/common/constants.dart';


part 'community_input.freezed.dart';

@freezed
class GetCommunityInput with _$GetCommunityInput {
  const factory GetCommunityInput({
    required int communityID,
  }) = _GetCommunityInput;
}

@freezed
class JoinCommunityInput with _$JoinCommunityInput {
  const factory JoinCommunityInput({
    required int communityID,
  }) = _JoinCommunityInput;
}

@freezed
class LeaveCommunityInput with _$LeaveCommunityInput {
  const factory LeaveCommunityInput({
    required int communityID,
  }) = _LeaveCommunityInput;
}

@freezed
class EvictUserFromCommunityInput with _$EvictUserFromCommunityInput {
  const factory EvictUserFromCommunityInput({
    required int communityID,
    required int userIdToRemove,
  }) = _EvictUserFromCommunityInput;
}

@freezed
class BlockUserFromCommunityInput with _$BlockUserFromCommunityInput {
  const factory BlockUserFromCommunityInput({
    required int communityID,
    required int userIdToBlock,
  }) = _BlockUserFromCommunityInput;
}

@freezed
class UnblockUserFromCommunityInput with _$UnblockUserFromCommunityInput {
  const factory UnblockUserFromCommunityInput({
    required int communityID,
    required int userIdToBlock,
  }) = _UnblockUserFromCommunityInput;
}

@freezed
class GetCommunityFeedInput with _$GetCommunityFeedInput {
  const factory GetCommunityFeedInput({
    required int communityID,
    required OrderBy orderBy,
    required SortBy sortOrder,
  }) = _GetCommunityFeedInput;
}

@freezed
class CreateCommunityInput with _$CreateCommunityInput {
  const factory CreateCommunityInput({
    required String name,
    required String about,
  }) = _CreateCommunityInput;
}

@freezed
class SearchCommunityInput with _$SearchCommunityInput {
  const factory SearchCommunityInput({
    required String query,
  }) = _SearchCommunityInput;
}

@freezed
class GetTrendingCommunitiesInput with _$GetTrendingCommunitiesInput {
  const factory GetTrendingCommunitiesInput() = _GetTrendingCommunitiesInput;
}