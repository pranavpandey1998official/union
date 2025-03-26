

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:uniun/core/api_response/api_base_response.dart';
import 'package:uniun/core/error/error_exception.dart';
import 'package:uniun/core/error/failures.dart';
import 'package:uniun/data/datasources/remote_datasource.dart';
import 'package:uniun/data/models/user_model.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';
import 'package:uniun/domain/repositories/user_repository.dart';

@Injectable(as : UserRepository)
class UserRepositoryImpl extends UserRepository {
  final RemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, AuthUserEntity>> loginUser(String email, String password, bool cached) async {
    try {
      final ApiResponse<AuthUserModel> response = await remoteDataSource.loginUser(email, password);
      return Right(response.data!.toDomain());
    } on ErrorException catch(exception) {
      return Left(Failure.errorFailure(exception.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, AuthUserEntity>> signUpUser(String email, String password, String name, String username, bool cached) async {
    try {
      final ApiResponse<AuthUserModel> response = await remoteDataSource.signUpUser(email, password, name, username);
      return Right(response.data!.toDomain());
    } on ErrorException catch(exception) {
      return Left(Failure.errorFailure(exception.message ?? ''));
    }
  }


}