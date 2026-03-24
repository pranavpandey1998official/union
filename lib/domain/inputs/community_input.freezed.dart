// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCommunityInput implements DiagnosticableTreeMixin {
  int get communityID;

  /// Create a copy of GetCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetCommunityInputCopyWith<GetCommunityInput> get copyWith =>
      _$GetCommunityInputCopyWithImpl<GetCommunityInput>(
          this as GetCommunityInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'GetCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetCommunityInput(communityID: $communityID)';
  }
}

/// @nodoc
abstract mixin class $GetCommunityInputCopyWith<$Res> {
  factory $GetCommunityInputCopyWith(
          GetCommunityInput value, $Res Function(GetCommunityInput) _then) =
      _$GetCommunityInputCopyWithImpl;
  @useResult
  $Res call({int communityID});
}

/// @nodoc
class _$GetCommunityInputCopyWithImpl<$Res>
    implements $GetCommunityInputCopyWith<$Res> {
  _$GetCommunityInputCopyWithImpl(this._self, this._then);

  final GetCommunityInput _self;
  final $Res Function(GetCommunityInput) _then;

  /// Create a copy of GetCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
  }) {
    return _then(_self.copyWith(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetCommunityInput].
extension GetCommunityInputPatterns on GetCommunityInput {
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
    TResult Function(_GetCommunityInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCommunityInput() when $default != null:
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
    TResult Function(_GetCommunityInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCommunityInput():
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
    TResult? Function(_GetCommunityInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCommunityInput() when $default != null:
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
    TResult Function(int communityID)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCommunityInput() when $default != null:
        return $default(_that.communityID);
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
    TResult Function(int communityID) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCommunityInput():
        return $default(_that.communityID);
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
    TResult? Function(int communityID)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCommunityInput() when $default != null:
        return $default(_that.communityID);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetCommunityInput
    with DiagnosticableTreeMixin
    implements GetCommunityInput {
  const _GetCommunityInput({required this.communityID});

  @override
  final int communityID;

  /// Create a copy of GetCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetCommunityInputCopyWith<_GetCommunityInput> get copyWith =>
      __$GetCommunityInputCopyWithImpl<_GetCommunityInput>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'GetCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetCommunityInput(communityID: $communityID)';
  }
}

/// @nodoc
abstract mixin class _$GetCommunityInputCopyWith<$Res>
    implements $GetCommunityInputCopyWith<$Res> {
  factory _$GetCommunityInputCopyWith(
          _GetCommunityInput value, $Res Function(_GetCommunityInput) _then) =
      __$GetCommunityInputCopyWithImpl;
  @override
  @useResult
  $Res call({int communityID});
}

/// @nodoc
class __$GetCommunityInputCopyWithImpl<$Res>
    implements _$GetCommunityInputCopyWith<$Res> {
  __$GetCommunityInputCopyWithImpl(this._self, this._then);

  final _GetCommunityInput _self;
  final $Res Function(_GetCommunityInput) _then;

  /// Create a copy of GetCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? communityID = null,
  }) {
    return _then(_GetCommunityInput(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$JoinCommunityInput implements DiagnosticableTreeMixin {
  int get communityID;

  /// Create a copy of JoinCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JoinCommunityInputCopyWith<JoinCommunityInput> get copyWith =>
      _$JoinCommunityInputCopyWithImpl<JoinCommunityInput>(
          this as JoinCommunityInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'JoinCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JoinCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinCommunityInput(communityID: $communityID)';
  }
}

/// @nodoc
abstract mixin class $JoinCommunityInputCopyWith<$Res> {
  factory $JoinCommunityInputCopyWith(
          JoinCommunityInput value, $Res Function(JoinCommunityInput) _then) =
      _$JoinCommunityInputCopyWithImpl;
  @useResult
  $Res call({int communityID});
}

/// @nodoc
class _$JoinCommunityInputCopyWithImpl<$Res>
    implements $JoinCommunityInputCopyWith<$Res> {
  _$JoinCommunityInputCopyWithImpl(this._self, this._then);

  final JoinCommunityInput _self;
  final $Res Function(JoinCommunityInput) _then;

  /// Create a copy of JoinCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
  }) {
    return _then(_self.copyWith(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [JoinCommunityInput].
extension JoinCommunityInputPatterns on JoinCommunityInput {
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
    TResult Function(_JoinCommunityInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JoinCommunityInput() when $default != null:
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
    TResult Function(_JoinCommunityInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinCommunityInput():
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
    TResult? Function(_JoinCommunityInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinCommunityInput() when $default != null:
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
    TResult Function(int communityID)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _JoinCommunityInput() when $default != null:
        return $default(_that.communityID);
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
    TResult Function(int communityID) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinCommunityInput():
        return $default(_that.communityID);
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
    TResult? Function(int communityID)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _JoinCommunityInput() when $default != null:
        return $default(_that.communityID);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _JoinCommunityInput
    with DiagnosticableTreeMixin
    implements JoinCommunityInput {
  const _JoinCommunityInput({required this.communityID});

  @override
  final int communityID;

  /// Create a copy of JoinCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JoinCommunityInputCopyWith<_JoinCommunityInput> get copyWith =>
      __$JoinCommunityInputCopyWithImpl<_JoinCommunityInput>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'JoinCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JoinCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinCommunityInput(communityID: $communityID)';
  }
}

/// @nodoc
abstract mixin class _$JoinCommunityInputCopyWith<$Res>
    implements $JoinCommunityInputCopyWith<$Res> {
  factory _$JoinCommunityInputCopyWith(
          _JoinCommunityInput value, $Res Function(_JoinCommunityInput) _then) =
      __$JoinCommunityInputCopyWithImpl;
  @override
  @useResult
  $Res call({int communityID});
}

/// @nodoc
class __$JoinCommunityInputCopyWithImpl<$Res>
    implements _$JoinCommunityInputCopyWith<$Res> {
  __$JoinCommunityInputCopyWithImpl(this._self, this._then);

  final _JoinCommunityInput _self;
  final $Res Function(_JoinCommunityInput) _then;

  /// Create a copy of JoinCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? communityID = null,
  }) {
    return _then(_JoinCommunityInput(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$LeaveCommunityInput implements DiagnosticableTreeMixin {
  int get communityID;

  /// Create a copy of LeaveCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LeaveCommunityInputCopyWith<LeaveCommunityInput> get copyWith =>
      _$LeaveCommunityInputCopyWithImpl<LeaveCommunityInput>(
          this as LeaveCommunityInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LeaveCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LeaveCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaveCommunityInput(communityID: $communityID)';
  }
}

/// @nodoc
abstract mixin class $LeaveCommunityInputCopyWith<$Res> {
  factory $LeaveCommunityInputCopyWith(
          LeaveCommunityInput value, $Res Function(LeaveCommunityInput) _then) =
      _$LeaveCommunityInputCopyWithImpl;
  @useResult
  $Res call({int communityID});
}

/// @nodoc
class _$LeaveCommunityInputCopyWithImpl<$Res>
    implements $LeaveCommunityInputCopyWith<$Res> {
  _$LeaveCommunityInputCopyWithImpl(this._self, this._then);

  final LeaveCommunityInput _self;
  final $Res Function(LeaveCommunityInput) _then;

  /// Create a copy of LeaveCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
  }) {
    return _then(_self.copyWith(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [LeaveCommunityInput].
extension LeaveCommunityInputPatterns on LeaveCommunityInput {
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
    TResult Function(_LeaveCommunityInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LeaveCommunityInput() when $default != null:
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
    TResult Function(_LeaveCommunityInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LeaveCommunityInput():
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
    TResult? Function(_LeaveCommunityInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LeaveCommunityInput() when $default != null:
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
    TResult Function(int communityID)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LeaveCommunityInput() when $default != null:
        return $default(_that.communityID);
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
    TResult Function(int communityID) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LeaveCommunityInput():
        return $default(_that.communityID);
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
    TResult? Function(int communityID)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LeaveCommunityInput() when $default != null:
        return $default(_that.communityID);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LeaveCommunityInput
    with DiagnosticableTreeMixin
    implements LeaveCommunityInput {
  const _LeaveCommunityInput({required this.communityID});

  @override
  final int communityID;

  /// Create a copy of LeaveCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LeaveCommunityInputCopyWith<_LeaveCommunityInput> get copyWith =>
      __$LeaveCommunityInputCopyWithImpl<_LeaveCommunityInput>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LeaveCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LeaveCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaveCommunityInput(communityID: $communityID)';
  }
}

/// @nodoc
abstract mixin class _$LeaveCommunityInputCopyWith<$Res>
    implements $LeaveCommunityInputCopyWith<$Res> {
  factory _$LeaveCommunityInputCopyWith(_LeaveCommunityInput value,
          $Res Function(_LeaveCommunityInput) _then) =
      __$LeaveCommunityInputCopyWithImpl;
  @override
  @useResult
  $Res call({int communityID});
}

/// @nodoc
class __$LeaveCommunityInputCopyWithImpl<$Res>
    implements _$LeaveCommunityInputCopyWith<$Res> {
  __$LeaveCommunityInputCopyWithImpl(this._self, this._then);

  final _LeaveCommunityInput _self;
  final $Res Function(_LeaveCommunityInput) _then;

  /// Create a copy of LeaveCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? communityID = null,
  }) {
    return _then(_LeaveCommunityInput(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$EvictUserFromCommunityInput implements DiagnosticableTreeMixin {
  int get communityID;
  int get userIdToRemove;

  /// Create a copy of EvictUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EvictUserFromCommunityInputCopyWith<EvictUserFromCommunityInput>
      get copyWith => _$EvictUserFromCommunityInputCopyWithImpl<
              EvictUserFromCommunityInput>(
          this as EvictUserFromCommunityInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'EvictUserFromCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('userIdToRemove', userIdToRemove));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EvictUserFromCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.userIdToRemove, userIdToRemove) ||
                other.userIdToRemove == userIdToRemove));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID, userIdToRemove);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EvictUserFromCommunityInput(communityID: $communityID, userIdToRemove: $userIdToRemove)';
  }
}

/// @nodoc
abstract mixin class $EvictUserFromCommunityInputCopyWith<$Res> {
  factory $EvictUserFromCommunityInputCopyWith(
          EvictUserFromCommunityInput value,
          $Res Function(EvictUserFromCommunityInput) _then) =
      _$EvictUserFromCommunityInputCopyWithImpl;
  @useResult
  $Res call({int communityID, int userIdToRemove});
}

/// @nodoc
class _$EvictUserFromCommunityInputCopyWithImpl<$Res>
    implements $EvictUserFromCommunityInputCopyWith<$Res> {
  _$EvictUserFromCommunityInputCopyWithImpl(this._self, this._then);

  final EvictUserFromCommunityInput _self;
  final $Res Function(EvictUserFromCommunityInput) _then;

  /// Create a copy of EvictUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
    Object? userIdToRemove = null,
  }) {
    return _then(_self.copyWith(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      userIdToRemove: null == userIdToRemove
          ? _self.userIdToRemove
          : userIdToRemove // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [EvictUserFromCommunityInput].
extension EvictUserFromCommunityInputPatterns on EvictUserFromCommunityInput {
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
    TResult Function(_EvictUserFromCommunityInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EvictUserFromCommunityInput() when $default != null:
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
    TResult Function(_EvictUserFromCommunityInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EvictUserFromCommunityInput():
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
    TResult? Function(_EvictUserFromCommunityInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EvictUserFromCommunityInput() when $default != null:
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
    TResult Function(int communityID, int userIdToRemove)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EvictUserFromCommunityInput() when $default != null:
        return $default(_that.communityID, _that.userIdToRemove);
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
    TResult Function(int communityID, int userIdToRemove) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EvictUserFromCommunityInput():
        return $default(_that.communityID, _that.userIdToRemove);
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
    TResult? Function(int communityID, int userIdToRemove)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EvictUserFromCommunityInput() when $default != null:
        return $default(_that.communityID, _that.userIdToRemove);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _EvictUserFromCommunityInput
    with DiagnosticableTreeMixin
    implements EvictUserFromCommunityInput {
  const _EvictUserFromCommunityInput(
      {required this.communityID, required this.userIdToRemove});

  @override
  final int communityID;
  @override
  final int userIdToRemove;

  /// Create a copy of EvictUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EvictUserFromCommunityInputCopyWith<_EvictUserFromCommunityInput>
      get copyWith => __$EvictUserFromCommunityInputCopyWithImpl<
          _EvictUserFromCommunityInput>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'EvictUserFromCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('userIdToRemove', userIdToRemove));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EvictUserFromCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.userIdToRemove, userIdToRemove) ||
                other.userIdToRemove == userIdToRemove));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID, userIdToRemove);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EvictUserFromCommunityInput(communityID: $communityID, userIdToRemove: $userIdToRemove)';
  }
}

/// @nodoc
abstract mixin class _$EvictUserFromCommunityInputCopyWith<$Res>
    implements $EvictUserFromCommunityInputCopyWith<$Res> {
  factory _$EvictUserFromCommunityInputCopyWith(
          _EvictUserFromCommunityInput value,
          $Res Function(_EvictUserFromCommunityInput) _then) =
      __$EvictUserFromCommunityInputCopyWithImpl;
  @override
  @useResult
  $Res call({int communityID, int userIdToRemove});
}

/// @nodoc
class __$EvictUserFromCommunityInputCopyWithImpl<$Res>
    implements _$EvictUserFromCommunityInputCopyWith<$Res> {
  __$EvictUserFromCommunityInputCopyWithImpl(this._self, this._then);

  final _EvictUserFromCommunityInput _self;
  final $Res Function(_EvictUserFromCommunityInput) _then;

  /// Create a copy of EvictUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? communityID = null,
    Object? userIdToRemove = null,
  }) {
    return _then(_EvictUserFromCommunityInput(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      userIdToRemove: null == userIdToRemove
          ? _self.userIdToRemove
          : userIdToRemove // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$BlockUserFromCommunityInput implements DiagnosticableTreeMixin {
  int get communityID;
  int get userIdToBlock;

  /// Create a copy of BlockUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlockUserFromCommunityInputCopyWith<BlockUserFromCommunityInput>
      get copyWith => _$BlockUserFromCommunityInputCopyWithImpl<
              BlockUserFromCommunityInput>(
          this as BlockUserFromCommunityInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'BlockUserFromCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('userIdToBlock', userIdToBlock));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockUserFromCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.userIdToBlock, userIdToBlock) ||
                other.userIdToBlock == userIdToBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID, userIdToBlock);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockUserFromCommunityInput(communityID: $communityID, userIdToBlock: $userIdToBlock)';
  }
}

/// @nodoc
abstract mixin class $BlockUserFromCommunityInputCopyWith<$Res> {
  factory $BlockUserFromCommunityInputCopyWith(
          BlockUserFromCommunityInput value,
          $Res Function(BlockUserFromCommunityInput) _then) =
      _$BlockUserFromCommunityInputCopyWithImpl;
  @useResult
  $Res call({int communityID, int userIdToBlock});
}

/// @nodoc
class _$BlockUserFromCommunityInputCopyWithImpl<$Res>
    implements $BlockUserFromCommunityInputCopyWith<$Res> {
  _$BlockUserFromCommunityInputCopyWithImpl(this._self, this._then);

  final BlockUserFromCommunityInput _self;
  final $Res Function(BlockUserFromCommunityInput) _then;

  /// Create a copy of BlockUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
    Object? userIdToBlock = null,
  }) {
    return _then(_self.copyWith(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      userIdToBlock: null == userIdToBlock
          ? _self.userIdToBlock
          : userIdToBlock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [BlockUserFromCommunityInput].
extension BlockUserFromCommunityInputPatterns on BlockUserFromCommunityInput {
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
    TResult Function(_BlockUserFromCommunityInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BlockUserFromCommunityInput() when $default != null:
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
    TResult Function(_BlockUserFromCommunityInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockUserFromCommunityInput():
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
    TResult? Function(_BlockUserFromCommunityInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockUserFromCommunityInput() when $default != null:
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
    TResult Function(int communityID, int userIdToBlock)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BlockUserFromCommunityInput() when $default != null:
        return $default(_that.communityID, _that.userIdToBlock);
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
    TResult Function(int communityID, int userIdToBlock) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockUserFromCommunityInput():
        return $default(_that.communityID, _that.userIdToBlock);
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
    TResult? Function(int communityID, int userIdToBlock)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockUserFromCommunityInput() when $default != null:
        return $default(_that.communityID, _that.userIdToBlock);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BlockUserFromCommunityInput
    with DiagnosticableTreeMixin
    implements BlockUserFromCommunityInput {
  const _BlockUserFromCommunityInput(
      {required this.communityID, required this.userIdToBlock});

  @override
  final int communityID;
  @override
  final int userIdToBlock;

  /// Create a copy of BlockUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BlockUserFromCommunityInputCopyWith<_BlockUserFromCommunityInput>
      get copyWith => __$BlockUserFromCommunityInputCopyWithImpl<
          _BlockUserFromCommunityInput>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'BlockUserFromCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('userIdToBlock', userIdToBlock));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlockUserFromCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.userIdToBlock, userIdToBlock) ||
                other.userIdToBlock == userIdToBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID, userIdToBlock);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlockUserFromCommunityInput(communityID: $communityID, userIdToBlock: $userIdToBlock)';
  }
}

/// @nodoc
abstract mixin class _$BlockUserFromCommunityInputCopyWith<$Res>
    implements $BlockUserFromCommunityInputCopyWith<$Res> {
  factory _$BlockUserFromCommunityInputCopyWith(
          _BlockUserFromCommunityInput value,
          $Res Function(_BlockUserFromCommunityInput) _then) =
      __$BlockUserFromCommunityInputCopyWithImpl;
  @override
  @useResult
  $Res call({int communityID, int userIdToBlock});
}

/// @nodoc
class __$BlockUserFromCommunityInputCopyWithImpl<$Res>
    implements _$BlockUserFromCommunityInputCopyWith<$Res> {
  __$BlockUserFromCommunityInputCopyWithImpl(this._self, this._then);

  final _BlockUserFromCommunityInput _self;
  final $Res Function(_BlockUserFromCommunityInput) _then;

  /// Create a copy of BlockUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? communityID = null,
    Object? userIdToBlock = null,
  }) {
    return _then(_BlockUserFromCommunityInput(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      userIdToBlock: null == userIdToBlock
          ? _self.userIdToBlock
          : userIdToBlock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$UnblockUserFromCommunityInput implements DiagnosticableTreeMixin {
  int get communityID;
  int get userIdToBlock;

  /// Create a copy of UnblockUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnblockUserFromCommunityInputCopyWith<UnblockUserFromCommunityInput>
      get copyWith => _$UnblockUserFromCommunityInputCopyWithImpl<
              UnblockUserFromCommunityInput>(
          this as UnblockUserFromCommunityInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UnblockUserFromCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('userIdToBlock', userIdToBlock));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnblockUserFromCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.userIdToBlock, userIdToBlock) ||
                other.userIdToBlock == userIdToBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID, userIdToBlock);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnblockUserFromCommunityInput(communityID: $communityID, userIdToBlock: $userIdToBlock)';
  }
}

/// @nodoc
abstract mixin class $UnblockUserFromCommunityInputCopyWith<$Res> {
  factory $UnblockUserFromCommunityInputCopyWith(
          UnblockUserFromCommunityInput value,
          $Res Function(UnblockUserFromCommunityInput) _then) =
      _$UnblockUserFromCommunityInputCopyWithImpl;
  @useResult
  $Res call({int communityID, int userIdToBlock});
}

/// @nodoc
class _$UnblockUserFromCommunityInputCopyWithImpl<$Res>
    implements $UnblockUserFromCommunityInputCopyWith<$Res> {
  _$UnblockUserFromCommunityInputCopyWithImpl(this._self, this._then);

  final UnblockUserFromCommunityInput _self;
  final $Res Function(UnblockUserFromCommunityInput) _then;

  /// Create a copy of UnblockUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
    Object? userIdToBlock = null,
  }) {
    return _then(_self.copyWith(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      userIdToBlock: null == userIdToBlock
          ? _self.userIdToBlock
          : userIdToBlock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [UnblockUserFromCommunityInput].
extension UnblockUserFromCommunityInputPatterns
    on UnblockUserFromCommunityInput {
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
    TResult Function(_UnblockUserFromCommunityInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnblockUserFromCommunityInput() when $default != null:
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
    TResult Function(_UnblockUserFromCommunityInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnblockUserFromCommunityInput():
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
    TResult? Function(_UnblockUserFromCommunityInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnblockUserFromCommunityInput() when $default != null:
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
    TResult Function(int communityID, int userIdToBlock)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnblockUserFromCommunityInput() when $default != null:
        return $default(_that.communityID, _that.userIdToBlock);
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
    TResult Function(int communityID, int userIdToBlock) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnblockUserFromCommunityInput():
        return $default(_that.communityID, _that.userIdToBlock);
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
    TResult? Function(int communityID, int userIdToBlock)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnblockUserFromCommunityInput() when $default != null:
        return $default(_that.communityID, _that.userIdToBlock);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UnblockUserFromCommunityInput
    with DiagnosticableTreeMixin
    implements UnblockUserFromCommunityInput {
  const _UnblockUserFromCommunityInput(
      {required this.communityID, required this.userIdToBlock});

  @override
  final int communityID;
  @override
  final int userIdToBlock;

  /// Create a copy of UnblockUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnblockUserFromCommunityInputCopyWith<_UnblockUserFromCommunityInput>
      get copyWith => __$UnblockUserFromCommunityInputCopyWithImpl<
          _UnblockUserFromCommunityInput>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'UnblockUserFromCommunityInput'))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('userIdToBlock', userIdToBlock));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnblockUserFromCommunityInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.userIdToBlock, userIdToBlock) ||
                other.userIdToBlock == userIdToBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID, userIdToBlock);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnblockUserFromCommunityInput(communityID: $communityID, userIdToBlock: $userIdToBlock)';
  }
}

/// @nodoc
abstract mixin class _$UnblockUserFromCommunityInputCopyWith<$Res>
    implements $UnblockUserFromCommunityInputCopyWith<$Res> {
  factory _$UnblockUserFromCommunityInputCopyWith(
          _UnblockUserFromCommunityInput value,
          $Res Function(_UnblockUserFromCommunityInput) _then) =
      __$UnblockUserFromCommunityInputCopyWithImpl;
  @override
  @useResult
  $Res call({int communityID, int userIdToBlock});
}

/// @nodoc
class __$UnblockUserFromCommunityInputCopyWithImpl<$Res>
    implements _$UnblockUserFromCommunityInputCopyWith<$Res> {
  __$UnblockUserFromCommunityInputCopyWithImpl(this._self, this._then);

  final _UnblockUserFromCommunityInput _self;
  final $Res Function(_UnblockUserFromCommunityInput) _then;

  /// Create a copy of UnblockUserFromCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? communityID = null,
    Object? userIdToBlock = null,
  }) {
    return _then(_UnblockUserFromCommunityInput(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      userIdToBlock: null == userIdToBlock
          ? _self.userIdToBlock
          : userIdToBlock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$GetCommunityFeedInput implements DiagnosticableTreeMixin {
  int get communityID;
  OrderBy get orderBy;
  SortBy get sortOrder;

  /// Create a copy of GetCommunityFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetCommunityFeedInputCopyWith<GetCommunityFeedInput> get copyWith =>
      _$GetCommunityFeedInputCopyWithImpl<GetCommunityFeedInput>(
          this as GetCommunityFeedInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'GetCommunityFeedInput'))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('orderBy', orderBy))
      ..add(DiagnosticsProperty('sortOrder', sortOrder));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCommunityFeedInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID, orderBy, sortOrder);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetCommunityFeedInput(communityID: $communityID, orderBy: $orderBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $GetCommunityFeedInputCopyWith<$Res> {
  factory $GetCommunityFeedInputCopyWith(GetCommunityFeedInput value,
          $Res Function(GetCommunityFeedInput) _then) =
      _$GetCommunityFeedInputCopyWithImpl;
  @useResult
  $Res call({int communityID, OrderBy orderBy, SortBy sortOrder});
}

/// @nodoc
class _$GetCommunityFeedInputCopyWithImpl<$Res>
    implements $GetCommunityFeedInputCopyWith<$Res> {
  _$GetCommunityFeedInputCopyWithImpl(this._self, this._then);

  final GetCommunityFeedInput _self;
  final $Res Function(GetCommunityFeedInput) _then;

  /// Create a copy of GetCommunityFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
    Object? orderBy = null,
    Object? sortOrder = null,
  }) {
    return _then(_self.copyWith(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _self.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as OrderBy,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortBy,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetCommunityFeedInput].
extension GetCommunityFeedInputPatterns on GetCommunityFeedInput {
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
    TResult Function(_GetCommunityFeedInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCommunityFeedInput() when $default != null:
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
    TResult Function(_GetCommunityFeedInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCommunityFeedInput():
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
    TResult? Function(_GetCommunityFeedInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCommunityFeedInput() when $default != null:
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
    TResult Function(int communityID, OrderBy orderBy, SortBy sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCommunityFeedInput() when $default != null:
        return $default(_that.communityID, _that.orderBy, _that.sortOrder);
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
    TResult Function(int communityID, OrderBy orderBy, SortBy sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCommunityFeedInput():
        return $default(_that.communityID, _that.orderBy, _that.sortOrder);
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
    TResult? Function(int communityID, OrderBy orderBy, SortBy sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCommunityFeedInput() when $default != null:
        return $default(_that.communityID, _that.orderBy, _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetCommunityFeedInput
    with DiagnosticableTreeMixin
    implements GetCommunityFeedInput {
  const _GetCommunityFeedInput(
      {required this.communityID,
      required this.orderBy,
      required this.sortOrder});

  @override
  final int communityID;
  @override
  final OrderBy orderBy;
  @override
  final SortBy sortOrder;

  /// Create a copy of GetCommunityFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetCommunityFeedInputCopyWith<_GetCommunityFeedInput> get copyWith =>
      __$GetCommunityFeedInputCopyWithImpl<_GetCommunityFeedInput>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'GetCommunityFeedInput'))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('orderBy', orderBy))
      ..add(DiagnosticsProperty('sortOrder', sortOrder));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCommunityFeedInput &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, communityID, orderBy, sortOrder);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetCommunityFeedInput(communityID: $communityID, orderBy: $orderBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$GetCommunityFeedInputCopyWith<$Res>
    implements $GetCommunityFeedInputCopyWith<$Res> {
  factory _$GetCommunityFeedInputCopyWith(_GetCommunityFeedInput value,
          $Res Function(_GetCommunityFeedInput) _then) =
      __$GetCommunityFeedInputCopyWithImpl;
  @override
  @useResult
  $Res call({int communityID, OrderBy orderBy, SortBy sortOrder});
}

/// @nodoc
class __$GetCommunityFeedInputCopyWithImpl<$Res>
    implements _$GetCommunityFeedInputCopyWith<$Res> {
  __$GetCommunityFeedInputCopyWithImpl(this._self, this._then);

  final _GetCommunityFeedInput _self;
  final $Res Function(_GetCommunityFeedInput) _then;

  /// Create a copy of GetCommunityFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? communityID = null,
    Object? orderBy = null,
    Object? sortOrder = null,
  }) {
    return _then(_GetCommunityFeedInput(
      communityID: null == communityID
          ? _self.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _self.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as OrderBy,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortBy,
    ));
  }
}

/// @nodoc
mixin _$CreateCommunityInput implements DiagnosticableTreeMixin {
  String get name;
  String get about;

  /// Create a copy of CreateCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateCommunityInputCopyWith<CreateCommunityInput> get copyWith =>
      _$CreateCommunityInputCopyWithImpl<CreateCommunityInput>(
          this as CreateCommunityInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'CreateCommunityInput'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('about', about));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCommunityInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, about);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateCommunityInput(name: $name, about: $about)';
  }
}

/// @nodoc
abstract mixin class $CreateCommunityInputCopyWith<$Res> {
  factory $CreateCommunityInputCopyWith(CreateCommunityInput value,
          $Res Function(CreateCommunityInput) _then) =
      _$CreateCommunityInputCopyWithImpl;
  @useResult
  $Res call({String name, String about});
}

/// @nodoc
class _$CreateCommunityInputCopyWithImpl<$Res>
    implements $CreateCommunityInputCopyWith<$Res> {
  _$CreateCommunityInputCopyWithImpl(this._self, this._then);

  final CreateCommunityInput _self;
  final $Res Function(CreateCommunityInput) _then;

  /// Create a copy of CreateCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? about = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _self.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateCommunityInput].
extension CreateCommunityInputPatterns on CreateCommunityInput {
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
    TResult Function(_CreateCommunityInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCommunityInput() when $default != null:
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
    TResult Function(_CreateCommunityInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommunityInput():
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
    TResult? Function(_CreateCommunityInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommunityInput() when $default != null:
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
    TResult Function(String name, String about)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateCommunityInput() when $default != null:
        return $default(_that.name, _that.about);
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
    TResult Function(String name, String about) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommunityInput():
        return $default(_that.name, _that.about);
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
    TResult? Function(String name, String about)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateCommunityInput() when $default != null:
        return $default(_that.name, _that.about);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreateCommunityInput
    with DiagnosticableTreeMixin
    implements CreateCommunityInput {
  const _CreateCommunityInput({required this.name, required this.about});

  @override
  final String name;
  @override
  final String about;

  /// Create a copy of CreateCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateCommunityInputCopyWith<_CreateCommunityInput> get copyWith =>
      __$CreateCommunityInputCopyWithImpl<_CreateCommunityInput>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'CreateCommunityInput'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('about', about));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCommunityInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, about);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateCommunityInput(name: $name, about: $about)';
  }
}

/// @nodoc
abstract mixin class _$CreateCommunityInputCopyWith<$Res>
    implements $CreateCommunityInputCopyWith<$Res> {
  factory _$CreateCommunityInputCopyWith(_CreateCommunityInput value,
          $Res Function(_CreateCommunityInput) _then) =
      __$CreateCommunityInputCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String about});
}

/// @nodoc
class __$CreateCommunityInputCopyWithImpl<$Res>
    implements _$CreateCommunityInputCopyWith<$Res> {
  __$CreateCommunityInputCopyWithImpl(this._self, this._then);

  final _CreateCommunityInput _self;
  final $Res Function(_CreateCommunityInput) _then;

  /// Create a copy of CreateCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? about = null,
  }) {
    return _then(_CreateCommunityInput(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _self.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SearchCommunityInput implements DiagnosticableTreeMixin {
  String get query;

  /// Create a copy of SearchCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchCommunityInputCopyWith<SearchCommunityInput> get copyWith =>
      _$SearchCommunityInputCopyWithImpl<SearchCommunityInput>(
          this as SearchCommunityInput, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchCommunityInput'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchCommunityInput &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchCommunityInput(query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchCommunityInputCopyWith<$Res> {
  factory $SearchCommunityInputCopyWith(SearchCommunityInput value,
          $Res Function(SearchCommunityInput) _then) =
      _$SearchCommunityInputCopyWithImpl;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchCommunityInputCopyWithImpl<$Res>
    implements $SearchCommunityInputCopyWith<$Res> {
  _$SearchCommunityInputCopyWithImpl(this._self, this._then);

  final SearchCommunityInput _self;
  final $Res Function(SearchCommunityInput) _then;

  /// Create a copy of SearchCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_self.copyWith(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchCommunityInput].
extension SearchCommunityInputPatterns on SearchCommunityInput {
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
    TResult Function(_SearchCommunityInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchCommunityInput() when $default != null:
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
    TResult Function(_SearchCommunityInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchCommunityInput():
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
    TResult? Function(_SearchCommunityInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchCommunityInput() when $default != null:
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
    TResult Function(String query)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchCommunityInput() when $default != null:
        return $default(_that.query);
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
    TResult Function(String query) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchCommunityInput():
        return $default(_that.query);
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
    TResult? Function(String query)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchCommunityInput() when $default != null:
        return $default(_that.query);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SearchCommunityInput
    with DiagnosticableTreeMixin
    implements SearchCommunityInput {
  const _SearchCommunityInput({required this.query});

  @override
  final String query;

  /// Create a copy of SearchCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchCommunityInputCopyWith<_SearchCommunityInput> get copyWith =>
      __$SearchCommunityInputCopyWithImpl<_SearchCommunityInput>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchCommunityInput'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchCommunityInput &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchCommunityInput(query: $query)';
  }
}

/// @nodoc
abstract mixin class _$SearchCommunityInputCopyWith<$Res>
    implements $SearchCommunityInputCopyWith<$Res> {
  factory _$SearchCommunityInputCopyWith(_SearchCommunityInput value,
          $Res Function(_SearchCommunityInput) _then) =
      __$SearchCommunityInputCopyWithImpl;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$SearchCommunityInputCopyWithImpl<$Res>
    implements _$SearchCommunityInputCopyWith<$Res> {
  __$SearchCommunityInputCopyWithImpl(this._self, this._then);

  final _SearchCommunityInput _self;
  final $Res Function(_SearchCommunityInput) _then;

  /// Create a copy of SearchCommunityInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
  }) {
    return _then(_SearchCommunityInput(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$GetTrendingCommunitiesInput implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'GetTrendingCommunitiesInput'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetTrendingCommunitiesInput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetTrendingCommunitiesInput()';
  }
}

/// @nodoc
class $GetTrendingCommunitiesInputCopyWith<$Res> {
  $GetTrendingCommunitiesInputCopyWith(GetTrendingCommunitiesInput _,
      $Res Function(GetTrendingCommunitiesInput) __);
}

/// Adds pattern-matching-related methods to [GetTrendingCommunitiesInput].
extension GetTrendingCommunitiesInputPatterns on GetTrendingCommunitiesInput {
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
    TResult Function(_GetTrendingCommunitiesInput value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetTrendingCommunitiesInput() when $default != null:
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
    TResult Function(_GetTrendingCommunitiesInput value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetTrendingCommunitiesInput():
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
    TResult? Function(_GetTrendingCommunitiesInput value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetTrendingCommunitiesInput() when $default != null:
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
    TResult Function()? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetTrendingCommunitiesInput() when $default != null:
        return $default();
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
    TResult Function() $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetTrendingCommunitiesInput():
        return $default();
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
    TResult? Function()? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetTrendingCommunitiesInput() when $default != null:
        return $default();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetTrendingCommunitiesInput
    with DiagnosticableTreeMixin
    implements GetTrendingCommunitiesInput {
  const _GetTrendingCommunitiesInput();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'GetTrendingCommunitiesInput'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTrendingCommunitiesInput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetTrendingCommunitiesInput()';
  }
}

// dart format on
