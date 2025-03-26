

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/common/constants.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/data/models/common_response.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';

abstract class CommunityRepository {
  Future<Either<Failure, CommunityEntity>> getCommunity(int communityId, bool cached); 
  Future<Either<Failure, SuccessObject>> leaveCommunity(int communityId); 
  Future<Either<Failure, SuccessObject>> joinCommunity(int communityId); 
  Future<Either<Failure, SuccessObject>> blockUserFromCommunity(int communityId, int userIdToBlock);
  Future<Either<Failure, SuccessObject>> unblockUserFromCommunity(int communityId, int userIdToUnblock);
  Future<Either<Failure, List<PostEntity>>> getAllPosts(int communityID, OrderBy orderBy, SortBy sortBy);
  Future<Either<Failure, CommunityEntity>> createCommunity(String name, String about);
  Future<Either<Failure, List<CommunityEntity>>> searchCommunity(String query);
  Future<Either<Failure, List<CommunityEntity>>> getTrendingCommunities();
}