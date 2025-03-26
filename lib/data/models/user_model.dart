import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';


@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'walletID') required int walletID,
    @JsonKey(name: 'token') required String token,
  }) = _AuthUserModel;

  
  const AuthUserModel._();

  factory AuthUserModel.fromJson(Map<String, dynamic> json) => _$AuthUserModelFromJson(json);
}


extension AuthUserExtension on AuthUserModel {
  AuthUserEntity toDomain() => AuthUserEntity(
    token: token,
    user: UserEntity(email: email, name: name, userID: id, username: username, walletID: walletID)
  );
}
