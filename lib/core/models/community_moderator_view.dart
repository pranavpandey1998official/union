import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';


part 'community_moderator_view.freezed.dart';

@freezed
class CommunityModeratorView with _$CommunityModeratorView {
  const factory CommunityModeratorView({
    required CommunityEntity community,
    required UserEntity moderator,
  }) = _CommunityModeratorView;

}
