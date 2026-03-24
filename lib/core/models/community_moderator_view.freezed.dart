// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_moderator_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunityModeratorView {
  CommunityEntity get community;
  UserEntity get moderator;

  /// Create a copy of CommunityModeratorView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommunityModeratorViewCopyWith<CommunityModeratorView> get copyWith =>
      _$CommunityModeratorViewCopyWithImpl<CommunityModeratorView>(
          this as CommunityModeratorView, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommunityModeratorView &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.moderator, moderator) ||
                other.moderator == moderator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, community, moderator);

  @override
  String toString() {
    return 'CommunityModeratorView(community: $community, moderator: $moderator)';
  }
}

/// @nodoc
abstract mixin class $CommunityModeratorViewCopyWith<$Res> {
  factory $CommunityModeratorViewCopyWith(CommunityModeratorView value,
          $Res Function(CommunityModeratorView) _then) =
      _$CommunityModeratorViewCopyWithImpl;
  @useResult
  $Res call({CommunityEntity community, UserEntity moderator});

  $CommunityEntityCopyWith<$Res> get community;
  $UserEntityCopyWith<$Res> get moderator;
}

/// @nodoc
class _$CommunityModeratorViewCopyWithImpl<$Res>
    implements $CommunityModeratorViewCopyWith<$Res> {
  _$CommunityModeratorViewCopyWithImpl(this._self, this._then);

  final CommunityModeratorView _self;
  final $Res Function(CommunityModeratorView) _then;

  /// Create a copy of CommunityModeratorView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? community = null,
    Object? moderator = null,
  }) {
    return _then(_self.copyWith(
      community: null == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as CommunityEntity,
      moderator: null == moderator
          ? _self.moderator
          : moderator // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  /// Create a copy of CommunityModeratorView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityEntityCopyWith<$Res> get community {
    return $CommunityEntityCopyWith<$Res>(_self.community, (value) {
      return _then(_self.copyWith(community: value));
    });
  }

  /// Create a copy of CommunityModeratorView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get moderator {
    return $UserEntityCopyWith<$Res>(_self.moderator, (value) {
      return _then(_self.copyWith(moderator: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CommunityModeratorView].
extension CommunityModeratorViewPatterns on CommunityModeratorView {
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
    TResult Function(_CommunityModeratorView value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommunityModeratorView() when $default != null:
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
    TResult Function(_CommunityModeratorView value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityModeratorView():
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
    TResult? Function(_CommunityModeratorView value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityModeratorView() when $default != null:
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
    TResult Function(CommunityEntity community, UserEntity moderator)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommunityModeratorView() when $default != null:
        return $default(_that.community, _that.moderator);
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
    TResult Function(CommunityEntity community, UserEntity moderator) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityModeratorView():
        return $default(_that.community, _that.moderator);
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
    TResult? Function(CommunityEntity community, UserEntity moderator)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityModeratorView() when $default != null:
        return $default(_that.community, _that.moderator);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CommunityModeratorView implements CommunityModeratorView {
  const _CommunityModeratorView(
      {required this.community, required this.moderator});

  @override
  final CommunityEntity community;
  @override
  final UserEntity moderator;

  /// Create a copy of CommunityModeratorView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommunityModeratorViewCopyWith<_CommunityModeratorView> get copyWith =>
      __$CommunityModeratorViewCopyWithImpl<_CommunityModeratorView>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommunityModeratorView &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.moderator, moderator) ||
                other.moderator == moderator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, community, moderator);

  @override
  String toString() {
    return 'CommunityModeratorView(community: $community, moderator: $moderator)';
  }
}

/// @nodoc
abstract mixin class _$CommunityModeratorViewCopyWith<$Res>
    implements $CommunityModeratorViewCopyWith<$Res> {
  factory _$CommunityModeratorViewCopyWith(_CommunityModeratorView value,
          $Res Function(_CommunityModeratorView) _then) =
      __$CommunityModeratorViewCopyWithImpl;
  @override
  @useResult
  $Res call({CommunityEntity community, UserEntity moderator});

  @override
  $CommunityEntityCopyWith<$Res> get community;
  @override
  $UserEntityCopyWith<$Res> get moderator;
}

/// @nodoc
class __$CommunityModeratorViewCopyWithImpl<$Res>
    implements _$CommunityModeratorViewCopyWith<$Res> {
  __$CommunityModeratorViewCopyWithImpl(this._self, this._then);

  final _CommunityModeratorView _self;
  final $Res Function(_CommunityModeratorView) _then;

  /// Create a copy of CommunityModeratorView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? community = null,
    Object? moderator = null,
  }) {
    return _then(_CommunityModeratorView(
      community: null == community
          ? _self.community
          : community // ignore: cast_nullable_to_non_nullable
              as CommunityEntity,
      moderator: null == moderator
          ? _self.moderator
          : moderator // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  /// Create a copy of CommunityModeratorView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityEntityCopyWith<$Res> get community {
    return $CommunityEntityCopyWith<$Res>(_self.community, (value) {
      return _then(_self.copyWith(community: value));
    });
  }

  /// Create a copy of CommunityModeratorView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get moderator {
    return $UserEntityCopyWith<$Res>(_self.moderator, (value) {
      return _then(_self.copyWith(moderator: value));
    });
  }
}

// dart format on
