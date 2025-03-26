import 'package:dartz/dartz.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';

abstract class CommentRepository {
  Future<Either<Failure, CommentEntity>> getSubComments(int commentID, int depth, bool cached); 
  Future<Either<Failure, CommentEntity>> getComment(int commentID, bool cached);
}