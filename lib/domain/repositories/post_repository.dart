import 'package:dartz/dartz.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';

abstract class PostRepository {
  Future<Either<Failure, PostEntity>> getPost(int postID, bool cached); 
  Future<Either<Failure, List<CommentEntity>>> getCommentsForPost(int postID, int depth, bool cached);
  Future<Either<Failure, PostEntity>> createPost(int communityID, String title, String type, bool isNSFW, String body);
}