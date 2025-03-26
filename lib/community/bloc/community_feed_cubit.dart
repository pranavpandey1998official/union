

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/common/constants.dart';
import 'package:uniun/community/bloc/community_feed_state.dart';
import 'package:uniun/core/models/post_view_media.dart';
import 'package:uniun/domain/inputs/community_input.dart';
import 'package:uniun/domain/usecases/community_usecase.dart';
import 'package:uniun/posts/utils/post.dart';

@injectable
class CommunityFeedCubit extends Cubit<CommunityFeedState> {
  GetCommunityFeedUseCase getCommunityFeedUseCase;

  int? communityID;

  CommunityFeedCubit({
    required this.getCommunityFeedUseCase,
    @factoryParam this.communityID,
  }) : super(const CommunityFeedState.initial());

  
  void getCommunityFeed() async {
    List<PostViewMedia> formattedPosts;
    emit(const CommunityFeedState.loading());
    var result = await getCommunityFeedUseCase.call(GetCommunityFeedInput(communityID: communityID!, orderBy: OrderBy.Hot , sortOrder: SortBy.DESC));
    result.fold((l) => emit(CommunityFeedState.failure(l.message)), 
    (r) async => {
      formattedPosts = await parsePostViews(r),
      emit(CommunityFeedState.success(formattedPosts))
    });
  }
}