// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginUserInput {
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginUserInputCopyWith<LoginUserInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserInputCopyWith<$Res> {
  factory $LoginUserInputCopyWith(
          LoginUserInput value, $Res Function(LoginUserInput) then) =
      _$LoginUserInputCopyWithImpl<$Res, LoginUserInput>;
  @useResult
  $Res call({String password, String email});
}

/// @nodoc
class _$LoginUserInputCopyWithImpl<$Res, $Val extends LoginUserInput>
    implements $LoginUserInputCopyWith<$Res> {
  _$LoginUserInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginUserInputImplCopyWith<$Res>
    implements $LoginUserInputCopyWith<$Res> {
  factory _$$LoginUserInputImplCopyWith(_$LoginUserInputImpl value,
          $Res Function(_$LoginUserInputImpl) then) =
      __$$LoginUserInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String email});
}

/// @nodoc
class __$$LoginUserInputImplCopyWithImpl<$Res>
    extends _$LoginUserInputCopyWithImpl<$Res, _$LoginUserInputImpl>
    implements _$$LoginUserInputImplCopyWith<$Res> {
  __$$LoginUserInputImplCopyWithImpl(
      _$LoginUserInputImpl _value, $Res Function(_$LoginUserInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$LoginUserInputImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUserInputImpl implements _LoginUserInput {
  const _$LoginUserInputImpl({required this.password, required this.email});

  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'LoginUserInput(password: $password, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserInputImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserInputImplCopyWith<_$LoginUserInputImpl> get copyWith =>
      __$$LoginUserInputImplCopyWithImpl<_$LoginUserInputImpl>(
          this, _$identity);
}

abstract class _LoginUserInput implements LoginUserInput {
  const factory _LoginUserInput(
      {required final String password,
      required final String email}) = _$LoginUserInputImpl;

  @override
  String get password;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$LoginUserInputImplCopyWith<_$LoginUserInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpUserInput {
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpUserInputCopyWith<SignUpUserInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpUserInputCopyWith<$Res> {
  factory $SignUpUserInputCopyWith(
          SignUpUserInput value, $Res Function(SignUpUserInput) then) =
      _$SignUpUserInputCopyWithImpl<$Res, SignUpUserInput>;
  @useResult
  $Res call({String password, String email, String name, String username});
}

/// @nodoc
class _$SignUpUserInputCopyWithImpl<$Res, $Val extends SignUpUserInput>
    implements $SignUpUserInputCopyWith<$Res> {
  _$SignUpUserInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
    Object? name = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpUserInputImplCopyWith<$Res>
    implements $SignUpUserInputCopyWith<$Res> {
  factory _$$SignUpUserInputImplCopyWith(_$SignUpUserInputImpl value,
          $Res Function(_$SignUpUserInputImpl) then) =
      __$$SignUpUserInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String email, String name, String username});
}

/// @nodoc
class __$$SignUpUserInputImplCopyWithImpl<$Res>
    extends _$SignUpUserInputCopyWithImpl<$Res, _$SignUpUserInputImpl>
    implements _$$SignUpUserInputImplCopyWith<$Res> {
  __$$SignUpUserInputImplCopyWithImpl(
      _$SignUpUserInputImpl _value, $Res Function(_$SignUpUserInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
    Object? name = null,
    Object? username = null,
  }) {
    return _then(_$SignUpUserInputImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpUserInputImpl implements _SignUpUserInput {
  const _$SignUpUserInputImpl(
      {required this.password,
      required this.email,
      required this.name,
      required this.username});

  @override
  final String password;
  @override
  final String email;
  @override
  final String name;
  @override
  final String username;

  @override
  String toString() {
    return 'SignUpUserInput(password: $password, email: $email, name: $name, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpUserInputImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email, name, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpUserInputImplCopyWith<_$SignUpUserInputImpl> get copyWith =>
      __$$SignUpUserInputImplCopyWithImpl<_$SignUpUserInputImpl>(
          this, _$identity);
}

abstract class _SignUpUserInput implements SignUpUserInput {
  const factory _SignUpUserInput(
      {required final String password,
      required final String email,
      required final String name,
      required final String username}) = _$SignUpUserInputImpl;

  @override
  String get password;
  @override
  String get email;
  @override
  String get name;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$SignUpUserInputImplCopyWith<_$SignUpUserInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
