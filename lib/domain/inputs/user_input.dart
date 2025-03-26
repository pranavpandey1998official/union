

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_input.freezed.dart';


@freezed
class LoginUserInput with _$LoginUserInput {
  const factory LoginUserInput({
    required String password,
    required String email,
  }) = _LoginUserInput;
}

@freezed
class SignUpUserInput with _$SignUpUserInput {
  const factory SignUpUserInput({
    required String password,
    required String email,
    required String name,
    required String username,
  }) = _SignUpUserInput;
}