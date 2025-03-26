


import 'package:dartz/dartz.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/core/usecases/usecases.dart';
import 'package:uniun/data/models/common_response.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/domain/inputs/community_input.dart';
import 'package:uniun/domain/repositories/community_repository.dart';

@injectable
class GetCommunityUseCase implements UseCase<Either<Failure, CommunityEntity>, GetCommunityInput> {
  final CommunityRepository communityRepository;

  GetCommunityUseCase(this.communityRepository);
  
  @override
  Future<Either<Failure, CommunityEntity>> call(input, {cached = false}) {
    return communityRepository.getCommunity(input.communityID, cached);
  }
}

@injectable
class JoinCommunityUseCase implements UseCase<Either<Failure, SuccessObject>, JoinCommunityInput> {
  final CommunityRepository communityRepository;

  JoinCommunityUseCase(this.communityRepository);

  @override
  Future<Either<Failure, SuccessObject>> call(input, {cached = false}) {
    return communityRepository.joinCommunity(input.communityID);
  }
}

@injectable
class LeaveCommunityUseCase implements UseCase<Either<Failure, SuccessObject>, LeaveCommunityInput> {
  final CommunityRepository communityRepository;

  LeaveCommunityUseCase(this.communityRepository);

  @override
  Future<Either<Failure, SuccessObject>> call(input, {cached = false}) {
    return communityRepository.leaveCommunity(input.communityID);
  }
}

@injectable 
class GetCommunityFeedUseCase implements UseCase<Either<Failure, List<PostEntity>>, GetCommunityFeedInput> {
  final CommunityRepository communityRepository;

  GetCommunityFeedUseCase(this.communityRepository);

  @override
  Future<Either<Failure, List<PostEntity>>> call(input, {cached = false}) {
    return communityRepository.getAllPosts(input.communityID, input.orderBy, input.sortOrder);
  }
}

@injectable 
class BlockUserFromCommunityUseCase  implements UseCase<Either<Failure, SuccessObject>, BlockUserFromCommunityInput> {
  final CommunityRepository communityRepository;

  BlockUserFromCommunityUseCase(this.communityRepository);

  @override
  Future<Either<Failure, SuccessObject>> call(input, {cached = false}) {
    return communityRepository.blockUserFromCommunity(input.communityID, input.userIdToBlock);
  }
}

@injectable 
class UnblockUserFromCommunityUseCase  implements UseCase<Either<Failure, SuccessObject>, UnblockUserFromCommunityInput> {
  final CommunityRepository communityRepository;

  UnblockUserFromCommunityUseCase(this.communityRepository);

  @override
  Future<Either<Failure, SuccessObject>> call(input, {cached = false}) {
    return communityRepository.unblockUserFromCommunity(input.communityID, input.userIdToBlock);
  }
}

@injectable
class CreateCommunityUseCase implements UseCase<Either<Failure, CommunityEntity>, CreateCommunityInput> {
  final CommunityRepository communityRepository;

  CreateCommunityUseCase(this.communityRepository);

  @override
  Future<Either<Failure, CommunityEntity>> call(input, {cached = false}) {
    return communityRepository.createCommunity(input.name, input.about);
  }
}


@injectable
class SearchCommunityUseCase implements UseCase<Either<Failure, List<CommunityEntity>>, SearchCommunityInput> {
  final CommunityRepository communityRepository;

  SearchCommunityUseCase(this.communityRepository);

  @override
  Future<Either<Failure, List<CommunityEntity>>> call(input, {cached = false}) {
    return communityRepository.searchCommunity(input.query);
  }
}

@injectable
class GetTrendingCommunitiesUseCase implements UseCase<Either<Failure, List<CommunityEntity>>, GetTrendingCommunitiesInput>  {
  final CommunityRepository communityRepository;

  GetTrendingCommunitiesUseCase(this.communityRepository);

  @override
  Future<Either<Failure, List<CommunityEntity>>> call(input, {cached = false}) {
    return communityRepository.getTrendingCommunities();
  }
}