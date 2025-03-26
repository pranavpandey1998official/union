import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/core/usecases/usecase.dart';
import 'package:uniun/domain/entities/comment/comment_entity.dart';
import 'package:uniun/domain/inputs/comment_input.dart';
import 'package:uniun/domain/repositories/comment_repository.dart';

@injectable
class GetSubCommentsUseCase implements UseCase<Either<Failure, CommentEntity>, GetSubCommentsInput> {
  final CommentRepository commentRepository;

  GetSubCommentsUseCase(this.commentRepository);

  @override
  Future<Either<Failure, CommentEntity>> call(input, {bool cached = false}) {
    return commentRepository.getSubComments(input.commentID, input.depth,  cached);
  }
}

@injectable
class GetCommentUserCase implements UseCase<Either<Failure, CommentEntity>, GetCommentInput> {
  final CommentRepository commentRepository;

  GetCommentUserCase(this.commentRepository);

  @override
  Future<Either<Failure, CommentEntity>> call(input, {bool cached = false}) {
    return commentRepository.getComment(input.commentID, cached);
  }
}