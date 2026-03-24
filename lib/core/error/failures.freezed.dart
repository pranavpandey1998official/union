// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Failure {
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) =
      _$FailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Failure() when failure != null:
        return failure(_that);
      case _NotFoundFailure() when notFoundFailure != null:
        return notFoundFailure(_that);
      case _ErrorFailure() when errorFailure != null:
        return errorFailure(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
  }) {
    final _that = this;
    switch (_that) {
      case _Failure():
        return failure(_that);
      case _NotFoundFailure():
        return notFoundFailure(_that);
      case _ErrorFailure():
        return errorFailure(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
  }) {
    final _that = this;
    switch (_that) {
      case _Failure() when failure != null:
        return failure(_that);
      case _NotFoundFailure() when notFoundFailure != null:
        return notFoundFailure(_that);
      case _ErrorFailure() when errorFailure != null:
        return errorFailure(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Failure() when failure != null:
        return failure(_that.message);
      case _NotFoundFailure() when notFoundFailure != null:
        return notFoundFailure(_that.message);
      case _ErrorFailure() when errorFailure != null:
        return errorFailure(_that.message);
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
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
  }) {
    final _that = this;
    switch (_that) {
      case _Failure():
        return failure(_that.message);
      case _NotFoundFailure():
        return notFoundFailure(_that.message);
      case _ErrorFailure():
        return errorFailure(_that.message);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
  }) {
    final _that = this;
    switch (_that) {
      case _Failure() when failure != null:
        return failure(_that.message);
      case _NotFoundFailure() when notFoundFailure != null:
        return notFoundFailure(_that.message);
      case _ErrorFailure() when errorFailure != null:
        return errorFailure(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Failure implements Failure {
  const _Failure(this.message);

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) =
      __$FailureCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Failure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _NotFoundFailure implements Failure {
  const _NotFoundFailure(this.message);

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotFoundFailureCopyWith<_NotFoundFailure> get copyWith =>
      __$NotFoundFailureCopyWithImpl<_NotFoundFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotFoundFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.notFoundFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$NotFoundFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$NotFoundFailureCopyWith(
          _NotFoundFailure value, $Res Function(_NotFoundFailure) _then) =
      __$NotFoundFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$NotFoundFailureCopyWithImpl<$Res>
    implements _$NotFoundFailureCopyWith<$Res> {
  __$NotFoundFailureCopyWithImpl(this._self, this._then);

  final _NotFoundFailure _self;
  final $Res Function(_NotFoundFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_NotFoundFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ErrorFailure implements Failure {
  const _ErrorFailure(this.message);

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorFailureCopyWith<_ErrorFailure> get copyWith =>
      __$ErrorFailureCopyWithImpl<_ErrorFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.errorFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ErrorFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$ErrorFailureCopyWith(
          _ErrorFailure value, $Res Function(_ErrorFailure) _then) =
      __$ErrorFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ErrorFailureCopyWithImpl<$Res>
    implements _$ErrorFailureCopyWith<$Res> {
  __$ErrorFailureCopyWithImpl(this._self, this._then);

  final _ErrorFailure _self;
  final $Res Function(_ErrorFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ErrorFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
