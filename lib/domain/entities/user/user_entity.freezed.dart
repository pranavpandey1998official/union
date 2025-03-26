// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEntity {
  int get userID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get walletID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {int userID, String name, String email, String username, int walletID});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? name = null,
    Object? email = null,
    Object? username = null,
    Object? walletID = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      walletID: null == walletID
          ? _value.walletID
          : walletID // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
          _$UserEntityImpl value, $Res Function(_$UserEntityImpl) then) =
      __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userID, String name, String email, String username, int walletID});
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
      _$UserEntityImpl _value, $Res Function(_$UserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? name = null,
    Object? email = null,
    Object? username = null,
    Object? walletID = null,
  }) {
    return _then(_$UserEntityImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      walletID: null == walletID
          ? _value.walletID
          : walletID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl(
      {required this.userID,
      required this.name,
      required this.email,
      required this.username,
      required this.walletID});

  @override
  final int userID;
  @override
  final String name;
  @override
  final String email;
  @override
  final String username;
  @override
  final int walletID;

  @override
  String toString() {
    return 'UserEntity(userID: $userID, name: $name, email: $email, username: $username, walletID: $walletID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.walletID, walletID) ||
                other.walletID == walletID));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userID, name, email, username, walletID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {required final int userID,
      required final String name,
      required final String email,
      required final String username,
      required final int walletID}) = _$UserEntityImpl;

  @override
  int get userID;
  @override
  String get name;
  @override
  String get email;
  @override
  String get username;
  @override
  int get walletID;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthUserEntity {
  String? get token => throw _privateConstructorUsedError;
  UserEntity? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserEntityCopyWith<AuthUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserEntityCopyWith<$Res> {
  factory $AuthUserEntityCopyWith(
          AuthUserEntity value, $Res Function(AuthUserEntity) then) =
      _$AuthUserEntityCopyWithImpl<$Res, AuthUserEntity>;
  @useResult
  $Res call({String? token, UserEntity? user});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthUserEntityCopyWithImpl<$Res, $Val extends AuthUserEntity>
    implements $AuthUserEntityCopyWith<$Res> {
  _$AuthUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthUserEntityImplCopyWith<$Res>
    implements $AuthUserEntityCopyWith<$Res> {
  factory _$$AuthUserEntityImplCopyWith(_$AuthUserEntityImpl value,
          $Res Function(_$AuthUserEntityImpl) then) =
      __$$AuthUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, UserEntity? user});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthUserEntityImplCopyWithImpl<$Res>
    extends _$AuthUserEntityCopyWithImpl<$Res, _$AuthUserEntityImpl>
    implements _$$AuthUserEntityImplCopyWith<$Res> {
  __$$AuthUserEntityImplCopyWithImpl(
      _$AuthUserEntityImpl _value, $Res Function(_$AuthUserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
  }) {
    return _then(_$AuthUserEntityImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$AuthUserEntityImpl implements _AuthUserEntity {
  const _$AuthUserEntityImpl({required this.token, required this.user});

  @override
  final String? token;
  @override
  final UserEntity? user;

  @override
  String toString() {
    return 'AuthUserEntity(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserEntityImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserEntityImplCopyWith<_$AuthUserEntityImpl> get copyWith =>
      __$$AuthUserEntityImplCopyWithImpl<_$AuthUserEntityImpl>(
          this, _$identity);
}

abstract class _AuthUserEntity implements AuthUserEntity {
  const factory _AuthUserEntity(
      {required final String? token,
      required final UserEntity? user}) = _$AuthUserEntityImpl;

  @override
  String? get token;
  @override
  UserEntity? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthUserEntityImplCopyWith<_$AuthUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
