

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/core/api_response/api_base_response.dart';
import 'package:uniun/core/error/error_exception.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/data/datasources/remote_datasource.dart';
import 'package:uniun/data/models/post_metadata_model.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/domain/repositories/post_repository.dart';

@Injectable(as : PostRepository)
class PostRepositoryImpl extends PostRepository {
  final RemoteDataSource remoteDataSource;

  PostRepositoryImpl(this.remoteDataSource);

  


  @override
  Future<Either<Failure, PostEntity>> getPost(int postID, bool cached) async {
    try {
      final ApiResponse<PostModel> response = await remoteDataSource.getPost(postID);
      return Right(response.data!.toDomain());
    } on ErrorException catch(exception) {
      return Left(Failure.errorFailure(exception.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, List<CommentEntity>>> getCommentsForPost(int postID, int depth, bool cached) async {
      return Left(Failure.errorFailure('TODO not implemented'));
  }
  
  @override
  Future<Either<Failure, PostEntity>> createPost(int communityID, String title, String type, bool isNSFW, body) async {
    try {
      final ApiResponse<PostModel> response = await remoteDataSource.createPost(communityID, title, type, isNSFW, body);
      return Right(response.data!.toDomain());
    } on ErrorException catch(exception) {
      return Left(Failure.errorFailure(exception.message ?? ''));
    }
  }}