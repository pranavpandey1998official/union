import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:collection/collection.dart';
import 'package:uniun/core/enum/sort_type.dart';
import 'package:uniun/core/models/post_view_media.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';
import 'package:uniun/domain/inputs/community_input.dart';
import 'package:uniun/domain/usecases/community_usecase.dart';
import 'package:uniun/search/utils/listing_type.dart';
import 'package:uniun/search/utils/search_type.dart';

part 'search_event.dart';
part 'search_state.dart';

const throttleDuration = Duration(milliseconds: 300);
const timeout = Duration(seconds: 10);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) =>
      droppable<E>().call(events.throttle(duration), mapper);
}

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchCommunityUseCase searchCommunityUseCase;
  JoinCommunityUseCase joinCommunityUseCase;
  LeaveCommunityUseCase leaveCommunityUseCase;
  GetTrendingCommunitiesUseCase getTrendingCommunitiesUseCase;

  SearchBloc(this.searchCommunityUseCase, this.joinCommunityUseCase,
      this.leaveCommunityUseCase, this.getTrendingCommunitiesUseCase)
      : super(SearchState()) {
    on<StartSearchEvent>(
      _startSearchEvent,
      transformer: throttleDroppable(throttleDuration),
    );
    on<ChangeCommunitySubsciptionStatusEvent>(
      _changeCommunitySubsciptionStatusEvent,
      transformer: throttleDroppable(throttleDuration),
    );
    on<ResetSearch>(
      _resetSearch,
      transformer: throttleDroppable(throttleDuration),
    );
    on<ContinueSearchEvent>(
      _continueSearchEvent,
      transformer: throttleDroppable(throttleDuration),
    );
    on<FocusSearchEvent>(
      _focusSearchEvent,
      transformer: throttleDroppable(throttleDuration),
    );
    on<GetTrendingCommunitiesEvent>(
      _getTrendingCommunitiesEvent,
      transformer: throttleDroppable(throttleDuration),
    );
    on<VoteCommentEvent>(
      _voteCommentEvent,
      transformer:
          throttleDroppable(Duration.zero), // Don't give a throttle on vote
    );
    on<SaveCommentEvent>(
      _saveCommentEvent,
      transformer:
          throttleDroppable(Duration.zero), // Don't give a throttle on save
    );
  }

  Future<void> _resetSearch(
      ResetSearch event, Emitter<SearchState> emit) async {
    emit(state.copyWith(status: SearchStatus.initial, trendingCommunities: []));
    await _getTrendingCommunitiesEvent(GetTrendingCommunitiesEvent(), emit);
  }

  Future<void> _startSearchEvent(
      StartSearchEvent event, Emitter<SearchState> emit) async {
    emit(state.copyWith(status: SearchStatus.loading));

    if (event.query.isEmpty) {
      return emit(state.copyWith(status: SearchStatus.initial));
    }

    final result = await searchCommunityUseCase
        .call(SearchCommunityInput(query: event.query));

    result.fold((l) {
      emit(state.copyWith(
          status: SearchStatus.failure, errorMessage: l.message));
    },
        (r) => {
              emit(state.copyWith(
                status: SearchStatus.done,
                communities: r,
              ))
            });
    return;
  }

  Future<void> _continueSearchEvent(
      ContinueSearchEvent event, Emitter<SearchState> emit) async {
    //TODO: As we don't have pagination implemented as of now hence we are not going to call this function ever

    // int attemptCount = 0;

    // try {
    //   while (attemptCount < 2) {
    //     try {
    //       emit(state.copyWith(
    //         status: SearchStatus.refreshing,
    //         communities: state.communities,
    //         users: state.users,
    //         comments: state.comments,
    //         posts: state.posts,
    //       ));

    //       Account? account = await fetchActiveProfileAccount();
    //       LemmyApiV3 lemmy = LemmyClient.instance.lemmyApiV3;

    //       SearchResponse searchResponse = await lemmy.run(Search(
    //         auth: account?.jwt,
    //         q: event.query,
    //         page: state.page,
    //         limit: 15,
    //         sort: event.sortType,
    //         listingType: event.listingType,
    //         type: event.searchType,
    //         communityId: event.communityId,
    //         creatorId: event.creatorId,
    //       ));

    //       if (searchIsEmpty(event.searchType, searchResponse: searchResponse)) {
    //         return emit(state.copyWith(status: SearchStatus.done));
    //       }

    //       // Append the search results
    //       state.communities = [...state.communities ?? [], ...searchResponse.communities];
    //       state.users = [...state.users ?? [], ...searchResponse.users];
    //       state.comments = [...state.comments ?? [], ...searchResponse.comments];
    //       state.posts = [...state.posts ?? [], ...await parsePostViews(searchResponse.posts)];

    //       return emit(state.copyWith(
    //         status: SearchStatus.success,
    //         communities: state.communities,
    //         users: state.users,
    //         comments: state.comments,
    //         posts: state.posts,
    //         page: state.page + 1,
    //       ));
    //     } catch (e) {
    //       attemptCount++;
    //     }
    //   }
    // } catch (e) {
    //   return emit(state.copyWith(status: SearchStatus.failure, errorMessage: e.toString()));
    // }
  }

  Future<void> _focusSearchEvent(
      FocusSearchEvent event, Emitter<SearchState> emit) async {
    emit(state.copyWith(focusSearchId: state.focusSearchId + 1));
  }

  Future<void> _changeCommunitySubsciptionStatusEvent(
      ChangeCommunitySubsciptionStatusEvent event,
      Emitter<SearchState> emit) async {
    if (event.follow) {
      final result = await joinCommunityUseCase
          .call(JoinCommunityInput(communityID: event.communityId));
      result.fold((l) => null, (r) {
        if (event.query.isNotEmpty) {
          var communities =
              state.communities?.map((CommunityEntity communityView) {
                    if (communityView.communityId == event.communityId) {
                      return communityView.copyWith(isMember: true);
                    }
                    return communityView;
                  }).toList() ??
                  [];
          emit(state.copyWith(
              status: SearchStatus.success, communities: communities));
        } else {
          var trendingCommunities =
              state.trendingCommunities?.map((CommunityEntity communityEntity) {
                    if (communityEntity.communityId == event.communityId) {
                      return communityEntity.copyWith(isMember: true);
                    }
                    return communityEntity;
                  }).toList() ??
                  [];
          emit(state.copyWith(
              status: SearchStatus.trending,
              trendingCommunities: trendingCommunities));
        }
      });
    } else {
      final result = await leaveCommunityUseCase
          .call(LeaveCommunityInput(communityID: event.communityId));
      result.fold((l) => null, (r) {
        if (event.query.isNotEmpty) {
          var communities =
              state.communities?.map((CommunityEntity communityView) {
                    if (communityView.communityId == event.communityId) {
                      return communityView.copyWith(isMember: false);
                    }
                    return communityView;
                  }).toList() ??
                  [];
          emit(state.copyWith(
              status: SearchStatus.success, communities: communities));
        } else {
          var trendingCommunities =
              state.trendingCommunities?.map((CommunityEntity communityEntity) {
                    if (communityEntity.communityId == event.communityId) {
                      return communityEntity.copyWith(isMember: false);
                    }
                    return communityEntity;
                  }).toList() ??
                  [];
          emit(state.copyWith(
              status: SearchStatus.trending,
              trendingCommunities: trendingCommunities));
        }
      });
    }
  }

  Future<void> _getTrendingCommunitiesEvent(
      GetTrendingCommunitiesEvent event, Emitter<SearchState> emit) async {
    
    final result = await getTrendingCommunitiesUseCase.call(GetTrendingCommunitiesInput());

    result.fold((l) {
    },
        (r) => {
              emit(state.copyWith(
              status: SearchStatus.trending,
              trendingCommunities: r))
            });
    return;
    
  }

  Future<void> _voteCommentEvent(
      VoteCommentEvent event, Emitter<SearchState> emit) async {
    // final AppLocalizations l10n = AppLocalizations.of(GlobalContext.context)!;

    // emit(state.copyWith(status: SearchStatus.performingCommentAction));

    // try {
    //   CommentView updatedCommentView = await voteComment(event.commentId, event.score).timeout(timeout, onTimeout: () {
    //     throw Exception(l10n.timeoutUpvoteComment);
    //   });

    //   // If it worked, update and emit
    //   CommentView? commentView = state.comments?.firstWhereOrNull((commentView) => commentView.comment.id == event.commentId);
    //   if (commentView != null) {
    //     int index = (state.comments?.indexOf(commentView))!;

    //     List<CommentView> comments = List.from(state.comments ?? []);
    //     comments.insert(index, updatedCommentView);
    //     comments.remove(commentView);

    //     emit(state.copyWith(status: SearchStatus.success, comments: comments));
    //   }
    // } catch (e) {
    //   // It just fails
    // }
  }

  Future<void> _saveCommentEvent(
      SaveCommentEvent event, Emitter<SearchState> emit) async {
    // final AppLocalizations l10n = AppLocalizations.of(GlobalContext.context)!;

    // emit(state.copyWith(status: SearchStatus.performingCommentAction));

    // try {
    //   CommentView updatedCommentView = await saveComment(event.commentId, event.save).timeout(timeout, onTimeout: () {
    //     throw Exception(l10n.timeoutUpvoteComment);
    //   });

    //   // If it worked, update and emit
    //   CommentView? commentView = state.comments?.firstWhereOrNull((commentView) => commentView.comment.id == event.commentId);
    //   if (commentView != null) {
    //     int index = (state.comments?.indexOf(commentView))!;

    //     List<CommentView> comments = List.from(state.comments ?? []);
    //     comments.insert(index, updatedCommentView);
    //     comments.remove(commentView);

    //     emit(state.copyWith(status: SearchStatus.success, comments: comments));
    //   }
    // } catch (e) {
    //   // It just fails
    // }
  }
}
