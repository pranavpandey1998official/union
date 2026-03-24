// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommunityEntity implements DiagnosticableTreeMixin {
  int get communityId;
  int get memberCount;
  bool get isMember;
  bool get isBlocked;
  String get about;
  String? get name;
  int? get presidentId;
  String? get walletId;
  int? get genesisId;
  DateTime? get created;
  String? get icon;

  /// Create a copy of CommunityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommunityEntityCopyWith<CommunityEntity> get copyWith =>
      _$CommunityEntityCopyWithImpl<CommunityEntity>(
          this as CommunityEntity, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity'))
      ..add(DiagnosticsProperty('communityId', communityId))
      ..add(DiagnosticsProperty('memberCount', memberCount))
      ..add(DiagnosticsProperty('isMember', isMember))
      ..add(DiagnosticsProperty('isBlocked', isBlocked))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('presidentId', presidentId))
      ..add(DiagnosticsProperty('walletId', walletId))
      ..add(DiagnosticsProperty('genesisId', genesisId))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommunityEntity &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.presidentId, presidentId) ||
                other.presidentId == presidentId) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.genesisId, genesisId) ||
                other.genesisId == genesisId) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      communityId,
      memberCount,
      isMember,
      isBlocked,
      about,
      name,
      presidentId,
      walletId,
      genesisId,
      created,
      icon);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity(communityId: $communityId, memberCount: $memberCount, isMember: $isMember, isBlocked: $isBlocked, about: $about, name: $name, presidentId: $presidentId, walletId: $walletId, genesisId: $genesisId, created: $created, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $CommunityEntityCopyWith<$Res> {
  factory $CommunityEntityCopyWith(
          CommunityEntity value, $Res Function(CommunityEntity) _then) =
      _$CommunityEntityCopyWithImpl;
  @useResult
  $Res call(
      {int communityId,
      int memberCount,
      bool isMember,
      bool isBlocked,
      String about,
      String? name,
      int? presidentId,
      String? walletId,
      int? genesisId,
      DateTime? created,
      String? icon});
}

/// @nodoc
class _$CommunityEntityCopyWithImpl<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  _$CommunityEntityCopyWithImpl(this._self, this._then);

  final CommunityEntity _self;
  final $Res Function(CommunityEntity) _then;

  /// Create a copy of CommunityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityId = null,
    Object? memberCount = null,
    Object? isMember = null,
    Object? isBlocked = null,
    Object? about = null,
    Object? name = freezed,
    Object? presidentId = freezed,
    Object? walletId = freezed,
    Object? genesisId = freezed,
    Object? created = freezed,
    Object? icon = freezed,
  }) {
    return _then(_self.copyWith(
      communityId: null == communityId
          ? _self.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as int,
      memberCount: null == memberCount
          ? _self.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      isMember: null == isMember
          ? _self.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _self.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      about: null == about
          ? _self.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      presidentId: freezed == presidentId
          ? _self.presidentId
          : presidentId // ignore: cast_nullable_to_non_nullable
              as int?,
      walletId: freezed == walletId
          ? _self.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String?,
      genesisId: freezed == genesisId
          ? _self.genesisId
          : genesisId // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CommunityEntity].
extension CommunityEntityPatterns on CommunityEntity {
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
    TResult Function(_CommunityEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommunityEntity() when $default != null:
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
    TResult Function(_CommunityEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityEntity():
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
    TResult? Function(_CommunityEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityEntity() when $default != null:
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
    TResult Function(
            int communityId,
            int memberCount,
            bool isMember,
            bool isBlocked,
            String about,
            String? name,
            int? presidentId,
            String? walletId,
            int? genesisId,
            DateTime? created,
            String? icon)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommunityEntity() when $default != null:
        return $default(
            _that.communityId,
            _that.memberCount,
            _that.isMember,
            _that.isBlocked,
            _that.about,
            _that.name,
            _that.presidentId,
            _that.walletId,
            _that.genesisId,
            _that.created,
            _that.icon);
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
    TResult Function(
            int communityId,
            int memberCount,
            bool isMember,
            bool isBlocked,
            String about,
            String? name,
            int? presidentId,
            String? walletId,
            int? genesisId,
            DateTime? created,
            String? icon)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityEntity():
        return $default(
            _that.communityId,
            _that.memberCount,
            _that.isMember,
            _that.isBlocked,
            _that.about,
            _that.name,
            _that.presidentId,
            _that.walletId,
            _that.genesisId,
            _that.created,
            _that.icon);
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
    TResult? Function(
            int communityId,
            int memberCount,
            bool isMember,
            bool isBlocked,
            String about,
            String? name,
            int? presidentId,
            String? walletId,
            int? genesisId,
            DateTime? created,
            String? icon)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommunityEntity() when $default != null:
        return $default(
            _that.communityId,
            _that.memberCount,
            _that.isMember,
            _that.isBlocked,
            _that.about,
            _that.name,
            _that.presidentId,
            _that.walletId,
            _that.genesisId,
            _that.created,
            _that.icon);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CommunityEntity with DiagnosticableTreeMixin implements CommunityEntity {
  const _CommunityEntity(
      {required this.communityId,
      this.memberCount = 0,
      this.isMember = false,
      this.isBlocked = false,
      this.about = '',
      this.name = '',
      required this.presidentId,
      required this.walletId,
      required this.genesisId,
      required this.created,
      this.icon});

  @override
  final int communityId;
  @override
  @JsonKey()
  final int memberCount;
  @override
  @JsonKey()
  final bool isMember;
  @override
  @JsonKey()
  final bool isBlocked;
  @override
  @JsonKey()
  final String about;
  @override
  @JsonKey()
  final String? name;
  @override
  final int? presidentId;
  @override
  final String? walletId;
  @override
  final int? genesisId;
  @override
  final DateTime? created;
  @override
  final String? icon;

  /// Create a copy of CommunityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommunityEntityCopyWith<_CommunityEntity> get copyWith =>
      __$CommunityEntityCopyWithImpl<_CommunityEntity>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'CommunityEntity'))
      ..add(DiagnosticsProperty('communityId', communityId))
      ..add(DiagnosticsProperty('memberCount', memberCount))
      ..add(DiagnosticsProperty('isMember', isMember))
      ..add(DiagnosticsProperty('isBlocked', isBlocked))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('presidentId', presidentId))
      ..add(DiagnosticsProperty('walletId', walletId))
      ..add(DiagnosticsProperty('genesisId', genesisId))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommunityEntity &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.presidentId, presidentId) ||
                other.presidentId == presidentId) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.genesisId, genesisId) ||
                other.genesisId == genesisId) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      communityId,
      memberCount,
      isMember,
      isBlocked,
      about,
      name,
      presidentId,
      walletId,
      genesisId,
      created,
      icon);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommunityEntity(communityId: $communityId, memberCount: $memberCount, isMember: $isMember, isBlocked: $isBlocked, about: $about, name: $name, presidentId: $presidentId, walletId: $walletId, genesisId: $genesisId, created: $created, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$CommunityEntityCopyWith<$Res>
    implements $CommunityEntityCopyWith<$Res> {
  factory _$CommunityEntityCopyWith(
          _CommunityEntity value, $Res Function(_CommunityEntity) _then) =
      __$CommunityEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int communityId,
      int memberCount,
      bool isMember,
      bool isBlocked,
      String about,
      String? name,
      int? presidentId,
      String? walletId,
      int? genesisId,
      DateTime? created,
      String? icon});
}

/// @nodoc
class __$CommunityEntityCopyWithImpl<$Res>
    implements _$CommunityEntityCopyWith<$Res> {
  __$CommunityEntityCopyWithImpl(this._self, this._then);

  final _CommunityEntity _self;
  final $Res Function(_CommunityEntity) _then;

  /// Create a copy of CommunityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? communityId = null,
    Object? memberCount = null,
    Object? isMember = null,
    Object? isBlocked = null,
    Object? about = null,
    Object? name = freezed,
    Object? presidentId = freezed,
    Object? walletId = freezed,
    Object? genesisId = freezed,
    Object? created = freezed,
    Object? icon = freezed,
  }) {
    return _then(_CommunityEntity(
      communityId: null == communityId
          ? _self.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as int,
      memberCount: null == memberCount
          ? _self.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      isMember: null == isMember
          ? _self.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: null == isBlocked
          ? _self.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
      about: null == about
          ? _self.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      presidentId: freezed == presidentId
          ? _self.presidentId
          : presidentId // ignore: cast_nullable_to_non_nullable
              as int?,
      walletId: freezed == walletId
          ? _self.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String?,
      genesisId: freezed == genesisId
          ? _self.genesisId
          : genesisId // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
