
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:uniun/core/form/form_item.dart';
import 'package:uniun/domain/entities/user/user_entity.dart';

enum SignUpStatus {
  initial,
  loading,
  success,
  error,
}

class SignUpState extends Equatable {
  const SignUpState({
    required this.formKey,
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.username = '',
    this.name = '',
    this.status = SignUpStatus.initial,
    this.errorMessage,
    this.authUserEntity,
  });


  SignUpState copyWith({
    String? email,
    String? password,
    String? confirmPassword,
    String? username,
    String? name,
    SignUpStatus? status,
    String? errorMessage,
    AuthUserEntity? authUserEntity,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      username: username ?? this.username,
      name: name ?? this.name,
      formKey: formKey,
      status: status ?? this.status,
      errorMessage: errorMessage,
      authUserEntity: authUserEntity,
    );
  }


  final GlobalKey<FormState> formKey;
  final String email;
  final String password;
  final String confirmPassword;
  final String username;
  final String name;
  final SignUpStatus status;
  final String? errorMessage;
  final AuthUserEntity? authUserEntity;


  @override
  List<Object?> get props => [email, password, confirmPassword, username, name, status, errorMessage, formKey, authUserEntity];
}