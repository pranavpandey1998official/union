// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserMetaData {
  int? get id;
  String? get username;

  /// Create a copy of UserMetaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserMetaDataCopyWith<UserMetaData> get copyWith =>
      _$UserMetaDataCopyWithImpl<UserMetaData>(
          this as UserMetaData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserMetaData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @override
  String toString() {
    return 'UserMetaData(id: $id, username: $username)';
  }
}

/// @nodoc
abstract mixin class $UserMetaDataCopyWith<$Res> {
  factory $UserMetaDataCopyWith(
          UserMetaData value, $Res Function(UserMetaData) _then) =
      _$UserMetaDataCopyWithImpl;
  @useResult
  $Res call({int? id, String? username});
}

/// @nodoc
class _$UserMetaDataCopyWithImpl<$Res> implements $UserMetaDataCopyWith<$Res> {
  _$UserMetaDataCopyWithImpl(this._self, this._then);

  final UserMetaData _self;
  final $Res Function(UserMetaData) _then;

  /// Create a copy of UserMetaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserMetaData].
extension UserMetaDataPatterns on UserMetaData {
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
    TResult Function(_UserMetaData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserMetaData() when $default != null:
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
    TResult Function(_UserMetaData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserMetaData():
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
    TResult? Function(_UserMetaData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserMetaData() when $default != null:
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
    TResult Function(int? id, String? username)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserMetaData() when $default != null:
        return $default(_that.id, _that.username);
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
    TResult Function(int? id, String? username) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserMetaData():
        return $default(_that.id, _that.username);
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
    TResult? Function(int? id, String? username)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserMetaData() when $default != null:
        return $default(_that.id, _that.username);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UserMetaData implements UserMetaData {
  const _UserMetaData({required this.id, required this.username});

  @override
  final int? id;
  @override
  final String? username;

  /// Create a copy of UserMetaData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserMetaDataCopyWith<_UserMetaData> get copyWith =>
      __$UserMetaDataCopyWithImpl<_UserMetaData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserMetaData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @override
  String toString() {
    return 'UserMetaData(id: $id, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$UserMetaDataCopyWith<$Res>
    implements $UserMetaDataCopyWith<$Res> {
  factory _$UserMetaDataCopyWith(
          _UserMetaData value, $Res Function(_UserMetaData) _then) =
      __$UserMetaDataCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, String? username});
}

/// @nodoc
class __$UserMetaDataCopyWithImpl<$Res>
    implements _$UserMetaDataCopyWith<$Res> {
  __$UserMetaDataCopyWithImpl(this._self, this._then);

  final _UserMetaData _self;
  final $Res Function(_UserMetaData) _then;

  /// Create a copy of UserMetaData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_UserMetaData(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
