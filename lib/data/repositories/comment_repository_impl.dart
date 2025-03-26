

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/core/api_response/api_base_response.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/data/datasources/remote_datasource.dart';
import 'package:uniun/data/models/post_metadata_model.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/repositories/comment_repository.dart';

@Injectable(as : CommentRepository)
class CommentRepositoryImpl extends CommentRepository {
  final RemoteDataSource remoteDataSource;

  CommentRepositoryImpl(this.remoteDataSource);


  @override
  Future<Either<Failure, CommentEntity>> getSubComments(int commentID, int depth, bool cached) async {
      return Left(Failure.errorFailure('TODO not implemented'));
  }
  
  @override
  Future<Either<Failure, CommentEntity>> getComment(int commentID, bool cached) {
    // TODO: implement getComment
    throw UnimplementedError();
  }}