


import 'package:dartz/dartz.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, AuthUserEntity>> loginUser(String email, String password, bool cached);
  Future<Either<Failure, AuthUserEntity>> signUpUser(String email, String password, String name, String username, bool cached);
}