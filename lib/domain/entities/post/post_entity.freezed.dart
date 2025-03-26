// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEntity {
  int? get postID => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  PostType? get type => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  int? get communityID => throw _privateConstructorUsedError;
  PostVotes? get postVotes => throw _privateConstructorUsedError;
  UserMetaData? get creator => throw _privateConstructorUsedError;
  dynamic get locked => throw _privateConstructorUsedError;
  bool get nsfw => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  bool get subscribed => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEntityCopyWith<PostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntityCopyWith<$Res> {
  factory $PostEntityCopyWith(
          PostEntity value, $Res Function(PostEntity) then) =
      _$PostEntityCopyWithImpl<$Res, PostEntity>;
  @useResult
  $Res call(
      {int? postID,
      String? title,
      PostType? type,
      String? body,
      DateTime? created,
      int? communityID,
      PostVotes? postVotes,
      UserMetaData? creator,
      dynamic locked,
      bool nsfw,
      bool saved,
      bool read,
      bool subscribed,
      bool deleted,
      String? thumbnailUrl});

  $PostVotesCopyWith<$Res>? get postVotes;
  $UserMetaDataCopyWith<$Res>? get creator;
}

/// @nodoc
class _$PostEntityCopyWithImpl<$Res, $Val extends PostEntity>
    implements $PostEntityCopyWith<$Res> {
  _$PostEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? body = freezed,
    Object? created = freezed,
    Object? communityID = freezed,
    Object? postVotes = freezed,
    Object? creator = freezed,
    Object? locked = freezed,
    Object? nsfw = null,
    Object? saved = null,
    Object? read = null,
    Object? subscribed = null,
    Object? deleted = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      postID: freezed == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      communityID: freezed == communityID
          ? _value.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int?,
      postVotes: freezed == postVotes
          ? _value.postVotes
          : postVotes // ignore: cast_nullable_to_non_nullable
              as PostVotes?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserMetaData?,
      locked: freezed == locked
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nsfw: null == nsfw
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribed: null == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostVotesCopyWith<$Res>? get postVotes {
    if (_value.postVotes == null) {
      return null;
    }

    return $PostVotesCopyWith<$Res>(_value.postVotes!, (value) {
      return _then(_value.copyWith(postVotes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMetaDataCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $UserMetaDataCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostEntityImplCopyWith<$Res>
    implements $PostEntityCopyWith<$Res> {
  factory _$$PostEntityImplCopyWith(
          _$PostEntityImpl value, $Res Function(_$PostEntityImpl) then) =
      __$$PostEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? postID,
      String? title,
      PostType? type,
      String? body,
      DateTime? created,
      int? communityID,
      PostVotes? postVotes,
      UserMetaData? creator,
      dynamic locked,
      bool nsfw,
      bool saved,
      bool read,
      bool subscribed,
      bool deleted,
      String? thumbnailUrl});

  @override
  $PostVotesCopyWith<$Res>? get postVotes;
  @override
  $UserMetaDataCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$PostEntityImplCopyWithImpl<$Res>
    extends _$PostEntityCopyWithImpl<$Res, _$PostEntityImpl>
    implements _$$PostEntityImplCopyWith<$Res> {
  __$$PostEntityImplCopyWithImpl(
      _$PostEntityImpl _value, $Res Function(_$PostEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? body = freezed,
    Object? created = freezed,
    Object? communityID = freezed,
    Object? postVotes = freezed,
    Object? creator = freezed,
    Object? locked = freezed,
    Object? nsfw = null,
    Object? saved = null,
    Object? read = null,
    Object? subscribed = null,
    Object? deleted = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_$PostEntityImpl(
      postID: freezed == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      communityID: freezed == communityID
          ? _value.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int?,
      postVotes: freezed == postVotes
          ? _value.postVotes
          : postVotes // ignore: cast_nullable_to_non_nullable
              as PostVotes?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserMetaData?,
      locked: freezed == locked ? _value.locked! : locked,
      nsfw: null == nsfw
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      subscribed: null == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostEntityImpl with DiagnosticableTreeMixin implements _PostEntity {
  const _$PostEntityImpl(
      {required this.postID,
      required this.title,
      required this.type,
      required this.body,
      required this.created,
      required this.communityID,
      required this.postVotes,
      required this.creator,
      this.locked = false,
      this.nsfw = false,
      this.saved = false,
      this.read = false,
      this.subscribed = false,
      this.deleted = false,
      this.thumbnailUrl});

  @override
  final int? postID;
  @override
  final String? title;
  @override
  final PostType? type;
  @override
  final String? body;
  @override
  final DateTime? created;
  @override
  final int? communityID;
  @override
  final PostVotes? postVotes;
  @override
  final UserMetaData? creator;
  @override
  @JsonKey()
  final dynamic locked;
  @override
  @JsonKey()
  final bool nsfw;
  @override
  @JsonKey()
  final bool saved;
  @override
  @JsonKey()
  final bool read;
  @override
  @JsonKey()
  final bool subscribed;
  @override
  @JsonKey()
  final bool deleted;
  @override
  final String? thumbnailUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEntity(postID: $postID, title: $title, type: $type, body: $body, created: $created, communityID: $communityID, postVotes: $postVotes, creator: $creator, locked: $locked, nsfw: $nsfw, saved: $saved, read: $read, subscribed: $subscribed, deleted: $deleted, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEntity'))
      ..add(DiagnosticsProperty('postID', postID))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('communityID', communityID))
      ..add(DiagnosticsProperty('postVotes', postVotes))
      ..add(DiagnosticsProperty('creator', creator))
      ..add(DiagnosticsProperty('locked', locked))
      ..add(DiagnosticsProperty('nsfw', nsfw))
      ..add(DiagnosticsProperty('saved', saved))
      ..add(DiagnosticsProperty('read', read))
      ..add(DiagnosticsProperty('subscribed', subscribed))
      ..add(DiagnosticsProperty('deleted', deleted))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEntityImpl &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.postVotes, postVotes) ||
                other.postVotes == postVotes) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other.locked, locked) &&
            (identical(other.nsfw, nsfw) || other.nsfw == nsfw) &&
            (identical(other.saved, saved) || other.saved == saved) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      postID,
      title,
      type,
      body,
      created,
      communityID,
      postVotes,
      creator,
      const DeepCollectionEquality().hash(locked),
      nsfw,
      saved,
      read,
      subscribed,
      deleted,
      thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEntityImplCopyWith<_$PostEntityImpl> get copyWith =>
      __$$PostEntityImplCopyWithImpl<_$PostEntityImpl>(this, _$identity);
}

abstract class _PostEntity implements PostEntity {
  const factory _PostEntity(
      {required final int? postID,
      required final String? title,
      required final PostType? type,
      required final String? body,
      required final DateTime? created,
      required final int? communityID,
      required final PostVotes? postVotes,
      required final UserMetaData? creator,
      final dynamic locked,
      final bool nsfw,
      final bool saved,
      final bool read,
      final bool subscribed,
      final bool deleted,
      final String? thumbnailUrl}) = _$PostEntityImpl;

  @override
  int? get postID;
  @override
  String? get title;
  @override
  PostType? get type;
  @override
  String? get body;
  @override
  DateTime? get created;
  @override
  int? get communityID;
  @override
  PostVotes? get postVotes;
  @override
  UserMetaData? get creator;
  @override
  dynamic get locked;
  @override
  bool get nsfw;
  @override
  bool get saved;
  @override
  bool get read;
  @override
  bool get subscribed;
  @override
  bool get deleted;
  @override
  String? get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$PostEntityImplCopyWith<_$PostEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostVotes {
  int? get upVote => throw _privateConstructorUsedError;
  int? get downVote => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostVotesCopyWith<PostVotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostVotesCopyWith<$Res> {
  factory $PostVotesCopyWith(PostVotes value, $Res Function(PostVotes) then) =
      _$PostVotesCopyWithImpl<$Res, PostVotes>;
  @useResult
  $Res call({int? upVote, int? downVote});
}

/// @nodoc
class _$PostVotesCopyWithImpl<$Res, $Val extends PostVotes>
    implements $PostVotesCopyWith<$Res> {
  _$PostVotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upVote = freezed,
    Object? downVote = freezed,
  }) {
    return _then(_value.copyWith(
      upVote: freezed == upVote
          ? _value.upVote
          : upVote // ignore: cast_nullable_to_non_nullable
              as int?,
      downVote: freezed == downVote
          ? _value.downVote
          : downVote // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostVotesImplCopyWith<$Res>
    implements $PostVotesCopyWith<$Res> {
  factory _$$PostVotesImplCopyWith(
          _$PostVotesImpl value, $Res Function(_$PostVotesImpl) then) =
      __$$PostVotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? upVote, int? downVote});
}

/// @nodoc
class __$$PostVotesImplCopyWithImpl<$Res>
    extends _$PostVotesCopyWithImpl<$Res, _$PostVotesImpl>
    implements _$$PostVotesImplCopyWith<$Res> {
  __$$PostVotesImplCopyWithImpl(
      _$PostVotesImpl _value, $Res Function(_$PostVotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upVote = freezed,
    Object? downVote = freezed,
  }) {
    return _then(_$PostVotesImpl(
      upVote: freezed == upVote
          ? _value.upVote
          : upVote // ignore: cast_nullable_to_non_nullable
              as int?,
      downVote: freezed == downVote
          ? _value.downVote
          : downVote // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PostVotesImpl with DiagnosticableTreeMixin implements _PostVotes {
  const _$PostVotesImpl({required this.upVote, required this.downVote});

  @override
  final int? upVote;
  @override
  final int? downVote;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostVotes(upVote: $upVote, downVote: $downVote)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostVotes'))
      ..add(DiagnosticsProperty('upVote', upVote))
      ..add(DiagnosticsProperty('downVote', downVote));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostVotesImpl &&
            (identical(other.upVote, upVote) || other.upVote == upVote) &&
            (identical(other.downVote, downVote) ||
                other.downVote == downVote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, upVote, downVote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostVotesImplCopyWith<_$PostVotesImpl> get copyWith =>
      __$$PostVotesImplCopyWithImpl<_$PostVotesImpl>(this, _$identity);
}

abstract class _PostVotes implements PostVotes {
  const factory _PostVotes(
      {required final int? upVote,
      required final int? downVote}) = _$PostVotesImpl;

  @override
  int? get upVote;
  @override
  int? get downVote;
  @override
  @JsonKey(ignore: true)
  _$$PostVotesImplCopyWith<_$PostVotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
