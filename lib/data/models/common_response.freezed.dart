// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuccessObject _$SuccessObjectFromJson(Map<String, dynamic> json) {
  return _SuccessObject.fromJson(json);
}

/// @nodoc
mixin _$SuccessObject {
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessObjectCopyWith<SuccessObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessObjectCopyWith<$Res> {
  factory $SuccessObjectCopyWith(
          SuccessObject value, $Res Function(SuccessObject) then) =
      _$SuccessObjectCopyWithImpl<$Res, SuccessObject>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SuccessObjectCopyWithImpl<$Res, $Val extends SuccessObject>
    implements $SuccessObjectCopyWith<$Res> {
  _$SuccessObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessObjectImplCopyWith<$Res>
    implements $SuccessObjectCopyWith<$Res> {
  factory _$$SuccessObjectImplCopyWith(
          _$SuccessObjectImpl value, $Res Function(_$SuccessObjectImpl) then) =
      __$$SuccessObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$SuccessObjectImplCopyWithImpl<$Res>
    extends _$SuccessObjectCopyWithImpl<$Res, _$SuccessObjectImpl>
    implements _$$SuccessObjectImplCopyWith<$Res> {
  __$$SuccessObjectImplCopyWithImpl(
      _$SuccessObjectImpl _value, $Res Function(_$SuccessObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SuccessObjectImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessObjectImpl implements _SuccessObject {
  const _$SuccessObjectImpl({required this.success});

  factory _$SuccessObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessObjectImplFromJson(json);

  @override
  final bool success;

  @override
  String toString() {
    return 'SuccessObject(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessObjectImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessObjectImplCopyWith<_$SuccessObjectImpl> get copyWith =>
      __$$SuccessObjectImplCopyWithImpl<_$SuccessObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessObjectImplToJson(
      this,
    );
  }
}

abstract class _SuccessObject implements SuccessObject {
  const factory _SuccessObject({required final bool success}) =
      _$SuccessObjectImpl;

  factory _SuccessObject.fromJson(Map<String, dynamic> json) =
      _$SuccessObjectImpl.fromJson;

  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$SuccessObjectImplCopyWith<_$SuccessObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
