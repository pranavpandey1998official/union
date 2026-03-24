// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuccessObject {
  bool get success;

  /// Create a copy of SuccessObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessObjectCopyWith<SuccessObject> get copyWith =>
      _$SuccessObjectCopyWithImpl<SuccessObject>(
          this as SuccessObject, _$identity);

  /// Serializes this SuccessObject to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessObject &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  @override
  String toString() {
    return 'SuccessObject(success: $success)';
  }
}

/// @nodoc
abstract mixin class $SuccessObjectCopyWith<$Res> {
  factory $SuccessObjectCopyWith(
          SuccessObject value, $Res Function(SuccessObject) _then) =
      _$SuccessObjectCopyWithImpl;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SuccessObjectCopyWithImpl<$Res>
    implements $SuccessObjectCopyWith<$Res> {
  _$SuccessObjectCopyWithImpl(this._self, this._then);

  final SuccessObject _self;
  final $Res Function(SuccessObject) _then;

  /// Create a copy of SuccessObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SuccessObject].
extension SuccessObjectPatterns on SuccessObject {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SuccessObject value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuccessObject() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SuccessObject value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuccessObject():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SuccessObject value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuccessObject() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool success)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuccessObject() when $default != null:
        return $default(_that.success);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool success) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuccessObject():
        return $default(_that.success);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool success)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuccessObject() when $default != null:
        return $default(_that.success);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SuccessObject implements SuccessObject {
  const _SuccessObject({required this.success});
  factory _SuccessObject.fromJson(Map<String, dynamic> json) =>
      _$SuccessObjectFromJson(json);

  @override
  final bool success;

  /// Create a copy of SuccessObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessObjectCopyWith<_SuccessObject> get copyWith =>
      __$SuccessObjectCopyWithImpl<_SuccessObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuccessObjectToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessObject &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success);

  @override
  String toString() {
    return 'SuccessObject(success: $success)';
  }
}

/// @nodoc
abstract mixin class _$SuccessObjectCopyWith<$Res>
    implements $SuccessObjectCopyWith<$Res> {
  factory _$SuccessObjectCopyWith(
          _SuccessObject value, $Res Function(_SuccessObject) _then) =
      __$SuccessObjectCopyWithImpl;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$SuccessObjectCopyWithImpl<$Res>
    implements _$SuccessObjectCopyWith<$Res> {
  __$SuccessObjectCopyWithImpl(this._self, this._then);

  final _SuccessObject _self;
  final $Res Function(_SuccessObject) _then;

  /// Create a copy of SuccessObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
  }) {
    return _then(_SuccessObject(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
