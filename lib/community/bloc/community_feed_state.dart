import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/core/models/post_view_media.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';

part 'community_feed_state.freezed.dart';

@freezed
class CommunityFeedState with _$CommunityFeedState {
  const factory CommunityFeedState.initial() = _Initial;
  const factory CommunityFeedState.loading() = _Loading;
  const factory CommunityFeedState.success(List<PostViewMedia> postMetadataList) = _Success;
  const factory CommunityFeedState.failure(String error) = _Failure;
}