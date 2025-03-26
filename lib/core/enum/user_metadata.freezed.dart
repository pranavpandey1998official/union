// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserMetaData {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserMetaDataCopyWith<UserMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMetaDataCopyWith<$Res> {
  factory $UserMetaDataCopyWith(
          UserMetaData value, $Res Function(UserMetaData) then) =
      _$UserMetaDataCopyWithImpl<$Res, UserMetaData>;
  @useResult
  $Res call({int? id, String? username});
}

/// @nodoc
class _$UserMetaDataCopyWithImpl<$Res, $Val extends UserMetaData>
    implements $UserMetaDataCopyWith<$Res> {
  _$UserMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMetaDataImplCopyWith<$Res>
    implements $UserMetaDataCopyWith<$Res> {
  factory _$$UserMetaDataImplCopyWith(
          _$UserMetaDataImpl value, $Res Function(_$UserMetaDataImpl) then) =
      __$$UserMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? username});
}

/// @nodoc
class __$$UserMetaDataImplCopyWithImpl<$Res>
    extends _$UserMetaDataCopyWithImpl<$Res, _$UserMetaDataImpl>
    implements _$$UserMetaDataImplCopyWith<$Res> {
  __$$UserMetaDataImplCopyWithImpl(
      _$UserMetaDataImpl _value, $Res Function(_$UserMetaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$UserMetaDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserMetaDataImpl implements _UserMetaData {
  const _$UserMetaDataImpl({required this.id, required this.username});

  @override
  final int? id;
  @override
  final String? username;

  @override
  String toString() {
    return 'UserMetaData(id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMetaDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMetaDataImplCopyWith<_$UserMetaDataImpl> get copyWith =>
      __$$UserMetaDataImplCopyWithImpl<_$UserMetaDataImpl>(this, _$identity);
}

abstract class _UserMetaData implements UserMetaData {
  const factory _UserMetaData(
      {required final int? id,
      required final String? username}) = _$UserMetaDataImpl;

  @override
  int? get id;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$UserMetaDataImplCopyWith<_$UserMetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
