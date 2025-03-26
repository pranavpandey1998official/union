import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:uniun/core/form/form_item.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  error,
}

class LoginState extends Equatable {
  const LoginState({
    required this.formKey,
    this.email = '',
    this.password = '',
    this.status = LoginStatus.initial,
    this.errorMessage,
    this.authUserEntity,
  });


  LoginState copyWith({
    String? email,
    String? password,
    LoginStatus? status,
    String? errorMessage,
    AuthUserEntity? authUserEntity,

  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      formKey: formKey,
      status: status ?? this.status,
      errorMessage: errorMessage,
      authUserEntity: authUserEntity,
    );
  }


  final GlobalKey<FormState> formKey;
  final String email;
  final String password;
  final LoginStatus status;
  final String? errorMessage;
  final AuthUserEntity? authUserEntity;

  @override
  List<Object?> get props => [email, password, status, errorMessage, authUserEntity, formKey];
}