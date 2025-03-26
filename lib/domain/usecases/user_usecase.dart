

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/core/usecases/usecases.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';
import 'package:uniun/domain/inputs/user_input.dart';
import 'package:uniun/domain/repositories/user_repository.dart';

@injectable
class LoginUserUseCase implements UseCase<Either<Failure, AuthUserEntity>, LoginUserInput> {
  final UserRepository userRepository;

  LoginUserUseCase(this.userRepository);

  @override
  Future<Either<Failure, AuthUserEntity>> call(input, {bool cached = false}) {
    return userRepository.loginUser(input.email, input.password, cached);
  }
}

@injectable
class SignUpUserUseCase implements UseCase<Either<Failure, AuthUserEntity>, SignUpUserInput> {
  final UserRepository userRepository;

  SignUpUserUseCase(this.userRepository);

  @override
  Future<Either<Failure, AuthUserEntity>> call(input, {bool cached = false}) {
    print('pranav');
    print(input.email);
    return userRepository.signUpUser(input.email, input.password, input.name, input.username, cached);
  }
}