

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int userID,
    required String name,
    required String email,
    required String username,
    required int walletID
  }) = _UserEntity;
}

@freezed
class AuthUserEntity with _$AuthUserEntity {
  const factory AuthUserEntity({
    required String? token,
    required UserEntity? user,
  }) = _AuthUserEntity;
}