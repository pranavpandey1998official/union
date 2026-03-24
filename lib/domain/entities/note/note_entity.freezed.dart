// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoteEntity {
  String get id;
  String get sig;
  String get authorPubkey;
  String get content;
  NoteType get type;
  List<String> get eTagRefs;
  List<String> get pTagRefs;
  List<String> get tTags;
  int get cachedReactionCount;
  DateTime get created;
  bool get isSeen;

  /// Create a copy of NoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoteEntityCopyWith<NoteEntity> get copyWith =>
      _$NoteEntityCopyWithImpl<NoteEntity>(this as NoteEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoteEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sig, sig) || other.sig == sig) &&
            (identical(other.authorPubkey, authorPubkey) ||
                other.authorPubkey == authorPubkey) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.eTagRefs, eTagRefs) &&
            const DeepCollectionEquality().equals(other.pTagRefs, pTagRefs) &&
            const DeepCollectionEquality().equals(other.tTags, tTags) &&
            (identical(other.cachedReactionCount, cachedReactionCount) ||
                other.cachedReactionCount == cachedReactionCount) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sig,
      authorPubkey,
      content,
      type,
      const DeepCollectionEquality().hash(eTagRefs),
      const DeepCollectionEquality().hash(pTagRefs),
      const DeepCollectionEquality().hash(tTags),
      cachedReactionCount,
      created,
      isSeen);

  @override
  String toString() {
    return 'NoteEntity(id: $id, sig: $sig, authorPubkey: $authorPubkey, content: $content, type: $type, eTagRefs: $eTagRefs, pTagRefs: $pTagRefs, tTags: $tTags, cachedReactionCount: $cachedReactionCount, created: $created, isSeen: $isSeen)';
  }
}

/// @nodoc
abstract mixin class $NoteEntityCopyWith<$Res> {
  factory $NoteEntityCopyWith(
          NoteEntity value, $Res Function(NoteEntity) _then) =
      _$NoteEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String sig,
      String authorPubkey,
      String content,
      NoteType type,
      List<String> eTagRefs,
      List<String> pTagRefs,
      List<String> tTags,
      int cachedReactionCount,
      DateTime created,
      bool isSeen});
}

/// @nodoc
class _$NoteEntityCopyWithImpl<$Res> implements $NoteEntityCopyWith<$Res> {
  _$NoteEntityCopyWithImpl(this._self, this._then);

  final NoteEntity _self;
  final $Res Function(NoteEntity) _then;

  /// Create a copy of NoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sig = null,
    Object? authorPubkey = null,
    Object? content = null,
    Object? type = null,
    Object? eTagRefs = null,
    Object? pTagRefs = null,
    Object? tTags = null,
    Object? cachedReactionCount = null,
    Object? created = null,
    Object? isSeen = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sig: null == sig
          ? _self.sig
          : sig // ignore: cast_nullable_to_non_nullable
              as String,
      authorPubkey: null == authorPubkey
          ? _self.authorPubkey
          : authorPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NoteType,
      eTagRefs: null == eTagRefs
          ? _self.eTagRefs
          : eTagRefs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pTagRefs: null == pTagRefs
          ? _self.pTagRefs
          : pTagRefs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tTags: null == tTags
          ? _self.tTags
          : tTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cachedReactionCount: null == cachedReactionCount
          ? _self.cachedReactionCount
          : cachedReactionCount // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSeen: null == isSeen
          ? _self.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [NoteEntity].
extension NoteEntityPatterns on NoteEntity {
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
    TResult Function(_NoteEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NoteEntity() when $default != null:
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
    TResult Function(_NoteEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NoteEntity():
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
    TResult? Function(_NoteEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NoteEntity() when $default != null:
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
            String id,
            String sig,
            String authorPubkey,
            String content,
            NoteType type,
            List<String> eTagRefs,
            List<String> pTagRefs,
            List<String> tTags,
            int cachedReactionCount,
            DateTime created,
            bool isSeen)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NoteEntity() when $default != null:
        return $default(
            _that.id,
            _that.sig,
            _that.authorPubkey,
            _that.content,
            _that.type,
            _that.eTagRefs,
            _that.pTagRefs,
            _that.tTags,
            _that.cachedReactionCount,
            _that.created,
            _that.isSeen);
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
            String id,
            String sig,
            String authorPubkey,
            String content,
            NoteType type,
            List<String> eTagRefs,
            List<String> pTagRefs,
            List<String> tTags,
            int cachedReactionCount,
            DateTime created,
            bool isSeen)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NoteEntity():
        return $default(
            _that.id,
            _that.sig,
            _that.authorPubkey,
            _that.content,
            _that.type,
            _that.eTagRefs,
            _that.pTagRefs,
            _that.tTags,
            _that.cachedReactionCount,
            _that.created,
            _that.isSeen);
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
            String id,
            String sig,
            String authorPubkey,
            String content,
            NoteType type,
            List<String> eTagRefs,
            List<String> pTagRefs,
            List<String> tTags,
            int cachedReactionCount,
            DateTime created,
            bool isSeen)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NoteEntity() when $default != null:
        return $default(
            _that.id,
            _that.sig,
            _that.authorPubkey,
            _that.content,
            _that.type,
            _that.eTagRefs,
            _that.pTagRefs,
            _that.tTags,
            _that.cachedReactionCount,
            _that.created,
            _that.isSeen);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NoteEntity implements NoteEntity {
  const _NoteEntity(
      {required this.id,
      required this.sig,
      required this.authorPubkey,
      required this.content,
      required this.type,
      required final List<String> eTagRefs,
      required final List<String> pTagRefs,
      required final List<String> tTags,
      required this.cachedReactionCount,
      required this.created,
      required this.isSeen})
      : _eTagRefs = eTagRefs,
        _pTagRefs = pTagRefs,
        _tTags = tTags;

  @override
  final String id;
  @override
  final String sig;
  @override
  final String authorPubkey;
  @override
  final String content;
  @override
  final NoteType type;
  final List<String> _eTagRefs;
  @override
  List<String> get eTagRefs {
    if (_eTagRefs is EqualUnmodifiableListView) return _eTagRefs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eTagRefs);
  }

  final List<String> _pTagRefs;
  @override
  List<String> get pTagRefs {
    if (_pTagRefs is EqualUnmodifiableListView) return _pTagRefs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pTagRefs);
  }

  final List<String> _tTags;
  @override
  List<String> get tTags {
    if (_tTags is EqualUnmodifiableListView) return _tTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tTags);
  }

  @override
  final int cachedReactionCount;
  @override
  final DateTime created;
  @override
  final bool isSeen;

  /// Create a copy of NoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoteEntityCopyWith<_NoteEntity> get copyWith =>
      __$NoteEntityCopyWithImpl<_NoteEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sig, sig) || other.sig == sig) &&
            (identical(other.authorPubkey, authorPubkey) ||
                other.authorPubkey == authorPubkey) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._eTagRefs, _eTagRefs) &&
            const DeepCollectionEquality().equals(other._pTagRefs, _pTagRefs) &&
            const DeepCollectionEquality().equals(other._tTags, _tTags) &&
            (identical(other.cachedReactionCount, cachedReactionCount) ||
                other.cachedReactionCount == cachedReactionCount) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sig,
      authorPubkey,
      content,
      type,
      const DeepCollectionEquality().hash(_eTagRefs),
      const DeepCollectionEquality().hash(_pTagRefs),
      const DeepCollectionEquality().hash(_tTags),
      cachedReactionCount,
      created,
      isSeen);

  @override
  String toString() {
    return 'NoteEntity(id: $id, sig: $sig, authorPubkey: $authorPubkey, content: $content, type: $type, eTagRefs: $eTagRefs, pTagRefs: $pTagRefs, tTags: $tTags, cachedReactionCount: $cachedReactionCount, created: $created, isSeen: $isSeen)';
  }
}

/// @nodoc
abstract mixin class _$NoteEntityCopyWith<$Res>
    implements $NoteEntityCopyWith<$Res> {
  factory _$NoteEntityCopyWith(
          _NoteEntity value, $Res Function(_NoteEntity) _then) =
      __$NoteEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String sig,
      String authorPubkey,
      String content,
      NoteType type,
      List<String> eTagRefs,
      List<String> pTagRefs,
      List<String> tTags,
      int cachedReactionCount,
      DateTime created,
      bool isSeen});
}

/// @nodoc
class __$NoteEntityCopyWithImpl<$Res> implements _$NoteEntityCopyWith<$Res> {
  __$NoteEntityCopyWithImpl(this._self, this._then);

  final _NoteEntity _self;
  final $Res Function(_NoteEntity) _then;

  /// Create a copy of NoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sig = null,
    Object? authorPubkey = null,
    Object? content = null,
    Object? type = null,
    Object? eTagRefs = null,
    Object? pTagRefs = null,
    Object? tTags = null,
    Object? cachedReactionCount = null,
    Object? created = null,
    Object? isSeen = null,
  }) {
    return _then(_NoteEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sig: null == sig
          ? _self.sig
          : sig // ignore: cast_nullable_to_non_nullable
              as String,
      authorPubkey: null == authorPubkey
          ? _self.authorPubkey
          : authorPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as NoteType,
      eTagRefs: null == eTagRefs
          ? _self._eTagRefs
          : eTagRefs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pTagRefs: null == pTagRefs
          ? _self._pTagRefs
          : pTagRefs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tTags: null == tTags
          ? _self._tTags
          : tTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cachedReactionCount: null == cachedReactionCount
          ? _self.cachedReactionCount
          : cachedReactionCount // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSeen: null == isSeen
          ? _self.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
