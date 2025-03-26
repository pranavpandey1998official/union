

import 'package:dartz/dartz.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/core/usecases/usecases.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/entities/post/post_entity.dart';
import 'package:uniun/domain/inputs/post_input.dart';
import 'package:uniun/domain/repositories/post_repository.dart';


@injectable
class GetPostUseCase implements UseCase<Either<Failure, PostEntity>, GetPostInput> {
  final PostRepository postRepository;

  GetPostUseCase(this.postRepository);

  @override
  Future<Either<Failure, PostEntity>> call(input, {bool cached = false}) {
    return postRepository.getPost(input.postID, cached);
  }
}

@injectable
class GetAllCommentsForPost implements UseCase<Either<Failure, List<CommentEntity>>, GetAllCommentsForPostInput> {
  final PostRepository postRepository;

  GetAllCommentsForPost(this.postRepository);


  @override
  Future <Either<Failure, List<CommentEntity>>> call(input, {bool cached = false}) {
    return postRepository.getCommentsForPost(input.postID, input.depth, cached);
  }
}

@injectable
class CreatePostUseCase implements UseCase<Either<Failure, PostEntity>, CreatePostInput> {
  final PostRepository postRepository;

  CreatePostUseCase(this.postRepository);

  @override
  Future<Either<Failure, PostEntity>> call(input, {bool cached = false}) {
    return postRepository.createPost(input.communityID, input.title, input.type, input.isNSFW, input.body);
  }
}