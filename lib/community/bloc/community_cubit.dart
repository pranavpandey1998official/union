import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/community/bloc/community_state.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/data/models/common_response.dart';
import 'package:uniun/domain/inputs/community_input.dart';
import 'package:uniun/domain/usecases/community_usecase.dart';

@injectable
class CommunityCubit extends Cubit<CommunityState> {
  GetCommunityUseCase getCommunityUseCase;
  JoinCommunityUseCase joinCommunityUseCase;
  LeaveCommunityUseCase leaveCommunityUseCase;

  int? communityID;

  CommunityCubit(
      {required this.getCommunityUseCase,
      required this.joinCommunityUseCase,
      required this.leaveCommunityUseCase,
      @factoryParam this.communityID})
      : super(const CommunityState.initial());

  void getCommunity() async {
    emit(const CommunityState.loading());
    final result = await getCommunityUseCase
        .call(GetCommunityInput(communityID: communityID!));
    result.fold((l) => emit(CommunityState.failure(l.message)),
        (r) => emit(CommunityState.success(r)));
  }

  void leaveCommunity() async {
    state.when(
      initial: () => {},
      loading: () => {},
      success: (communityEntity) async {
        var result = await leaveCommunityUseCase
            .call(LeaveCommunityInput(communityID: communityID!));
        result.fold((l) => emit(CommunityState.failure(l.message)),
            (r) => emit(CommunityState.success(communityEntity)));
      },
      failure: (error) => {},
    );
  }

  void joinCommunity() async {
    state.when(
      initial: () => {},
      loading: () => {},
      success: (communityEntity) async {
        var result = await joinCommunityUseCase
            .call(JoinCommunityInput(communityID: communityID!));
        result.fold((l) => emit(CommunityState.failure(l.message)),
            (r) => emit(CommunityState.success(communityEntity)));
      },
      failure: (error) => {},
    );
  }

}
