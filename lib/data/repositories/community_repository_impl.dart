

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/common/constants.dart';
import 'package:uniun/core/error/error_exception.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/data/datasources/local_datasource.dart';
import 'package:uniun/data/datasources/remote_datasource.dart';
import 'package:uniun/data/models/common_response.dart';
import 'package:uniun/data/models/community_model.dart';
import 'package:uniun/data/models/post_metadata_model.dart';
import 'package:uniun/domain/entities/community/community_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/domain/repositories/community_repository.dart';

@Injectable(as: CommunityRepository) 
class CommunityRepositoryImpl extends CommunityRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  CommunityRepositoryImpl({required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, CommunityEntity>> getCommunity(int communityId, bool cached) async{
    try {
      if(cached) {
        final community = await localDataSource.getCommunity(communityId);
        if(community != null) {
          return Right(community.toDomain());
        }
      }
      final response = await remoteDataSource.getCommunity(communityId);
      await localDataSource.saveCommunity(response.data!);
      return Right(response.data!.toDomain());
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
  
  @override
  Future<Either<Failure, SuccessObject>> joinCommunity(int communityId) async{
    try {
      final response = await remoteDataSource.joinCommunity(communityId);
      await localDataSource.joinCommunity(communityId);
      return Right(response.data!);
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
  
  @override
  Future<Either<Failure, SuccessObject>> leaveCommunity(int communityId) async{
    try {
      final response = await remoteDataSource.leaveCommunity(communityId);
      return Right(response.data!);
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
  
  @override
  Future<Either<Failure, SuccessObject>> blockUserFromCommunity(int communityId, int userIdToBlock) async {
    try {
      final response = await remoteDataSource.blockUserFromCommunity(communityId, userIdToBlock);
      return Right(response.data!);
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
  
  @override
  Future<Either<Failure, SuccessObject>> unblockUserFromCommunity(int communityId, int userIdToUnblock) async {
    try {
      final response = await remoteDataSource.unblockUserFromCommunity(communityId, userIdToUnblock);
      return Right(response.data!);
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }

  @override
  Future<Either<Failure, List<PostEntity>>> getAllPosts(int communityID, OrderBy orderBy, SortBy sortBy) async {
    try {
      final response = await remoteDataSource.getAllPosts(communityID, orderBy, sortBy);
      if(response.data != null) {
        return Right(response.data?.map((e) => e.toDomain()).toList() ?? [] );
      }
      return const Left(Failure.errorFailure("Nothing returned"));
      
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
  
  @override
  Future<Either<Failure, CommunityEntity>> createCommunity(String name, String about) async {
    try {
      final response = await remoteDataSource.createCommunity(name, about);
      return Right(response.data!.toDomain());
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
  
  @override
  Future<Either<Failure, List<CommunityEntity>>> searchCommunity(String query) async {
    try {
      final response = await remoteDataSource.searchCommunity(query);
      if(response.data != null) {
        return Right(response.data?.map((e) => e.toDomain()).toList() ?? [] );
      }
      return const Left(Failure.errorFailure("Nothing returned"));
      
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
  
  @override
  Future<Either<Failure, List<CommunityEntity>>> getTrendingCommunities() async {
    try {
      final response = await remoteDataSource.getTrendingCommunities();
      if(response.data != null) {
        return Right(response.data?.map((e) => e.toDomain()).toList() ?? [] );
      }
      return const Left(Failure.errorFailure("Nothing returned"));
      
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
}