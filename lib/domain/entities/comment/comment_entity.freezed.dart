// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentEntity {
  int get commentID => throw _privateConstructorUsedError;
  int get postID => throw _privateConstructorUsedError;
  int? get parentCommentID => throw _privateConstructorUsedError;
  UserMetaData get creator => throw _privateConstructorUsedError;
  CommentVotes get commentVotes => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get originalDepth => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  int get childCount => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) then) =
      _$CommentEntityCopyWithImpl<$Res, CommentEntity>;
  @useResult
  $Res call(
      {int commentID,
      int postID,
      int? parentCommentID,
      UserMetaData creator,
      CommentVotes commentVotes,
      String body,
      int depth,
      DateTime created,
      String path,
      int originalDepth,
      DateTime? updated,
      int childCount,
      bool saved,
      bool deleted});

  $UserMetaDataCopyWith<$Res> get creator;
  $CommentVotesCopyWith<$Res> get commentVotes;
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res, $Val extends CommentEntity>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
    Object? postID = null,
    Object? parentCommentID = freezed,
    Object? creator = null,
    Object? commentVotes = null,
    Object? body = null,
    Object? depth = null,
    Object? created = null,
    Object? path = null,
    Object? originalDepth = null,
    Object? updated = freezed,
    Object? childCount = null,
    Object? saved = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as int,
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int,
      parentCommentID: freezed == parentCommentID
          ? _value.parentCommentID
          : parentCommentID // ignore: cast_nullable_to_non_nullable
              as int?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserMetaData,
      commentVotes: null == commentVotes
          ? _value.commentVotes
          : commentVotes // ignore: cast_nullable_to_non_nullable
              as CommentVotes,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      originalDepth: null == originalDepth
          ? _value.originalDepth
          : originalDepth // ignore: cast_nullable_to_non_nullable
              as int,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      childCount: null == childCount
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMetaDataCopyWith<$Res> get creator {
    return $UserMetaDataCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentVotesCopyWith<$Res> get commentVotes {
    return $CommentVotesCopyWith<$Res>(_value.commentVotes, (value) {
      return _then(_value.copyWith(commentVotes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentEntityImplCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$$CommentEntityImplCopyWith(
          _$CommentEntityImpl value, $Res Function(_$CommentEntityImpl) then) =
      __$$CommentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int commentID,
      int postID,
      int? parentCommentID,
      UserMetaData creator,
      CommentVotes commentVotes,
      String body,
      int depth,
      DateTime created,
      String path,
      int originalDepth,
      DateTime? updated,
      int childCount,
      bool saved,
      bool deleted});

  @override
  $UserMetaDataCopyWith<$Res> get creator;
  @override
  $CommentVotesCopyWith<$Res> get commentVotes;
}

/// @nodoc
class __$$CommentEntityImplCopyWithImpl<$Res>
    extends _$CommentEntityCopyWithImpl<$Res, _$CommentEntityImpl>
    implements _$$CommentEntityImplCopyWith<$Res> {
  __$$CommentEntityImplCopyWithImpl(
      _$CommentEntityImpl _value, $Res Function(_$CommentEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
    Object? postID = null,
    Object? parentCommentID = freezed,
    Object? creator = null,
    Object? commentVotes = null,
    Object? body = null,
    Object? depth = null,
    Object? created = null,
    Object? path = null,
    Object? originalDepth = null,
    Object? updated = freezed,
    Object? childCount = null,
    Object? saved = null,
    Object? deleted = null,
  }) {
    return _then(_$CommentEntityImpl(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as int,
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int,
      parentCommentID: freezed == parentCommentID
          ? _value.parentCommentID
          : parentCommentID // ignore: cast_nullable_to_non_nullable
              as int?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserMetaData,
      commentVotes: null == commentVotes
          ? _value.commentVotes
          : commentVotes // ignore: cast_nullable_to_non_nullable
              as CommentVotes,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      originalDepth: null == originalDepth
          ? _value.originalDepth
          : originalDepth // ignore: cast_nullable_to_non_nullable
              as int,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      childCount: null == childCount
          ? _value.childCount
          : childCount // ignore: cast_nullable_to_non_nullable
              as int,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CommentEntityImpl implements _CommentEntity {
  const _$CommentEntityImpl(
      {required this.commentID,
      required this.postID,
      required this.parentCommentID,
      required this.creator,
      required this.commentVotes,
      required this.body,
      required this.depth,
      required this.created,
      required this.path,
      required this.originalDepth,
      this.updated,
      this.childCount = 0,
      this.saved = false,
      this.deleted = false});

  @override
  final int commentID;
  @override
  final int postID;
  @override
  final int? parentCommentID;
  @override
  final UserMetaData creator;
  @override
  final CommentVotes commentVotes;
  @override
  final String body;
  @override
  final int depth;
  @override
  final DateTime created;
  @override
  final String path;
  @override
  final int originalDepth;
  @override
  final DateTime? updated;
  @override
  @JsonKey()
  final int childCount;
  @override
  @JsonKey()
  final bool saved;
  @override
  @JsonKey()
  final bool deleted;

  @override
  String toString() {
    return 'CommentEntity(commentID: $commentID, postID: $postID, parentCommentID: $parentCommentID, creator: $creator, commentVotes: $commentVotes, body: $body, depth: $depth, created: $created, path: $path, originalDepth: $originalDepth, updated: $updated, childCount: $childCount, saved: $saved, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEntityImpl &&
            (identical(other.commentID, commentID) ||
                other.commentID == commentID) &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.parentCommentID, parentCommentID) ||
                other.parentCommentID == parentCommentID) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.commentVotes, commentVotes) ||
                other.commentVotes == commentVotes) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.originalDepth, originalDepth) ||
                other.originalDepth == originalDepth) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.childCount, childCount) ||
                other.childCount == childCount) &&
            (identical(other.saved, saved) || other.saved == saved) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentID,
      postID,
      parentCommentID,
      creator,
      commentVotes,
      body,
      depth,
      created,
      path,
      originalDepth,
      updated,
      childCount,
      saved,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEntityImplCopyWith<_$CommentEntityImpl> get copyWith =>
      __$$CommentEntityImplCopyWithImpl<_$CommentEntityImpl>(this, _$identity);
}

abstract class _CommentEntity implements CommentEntity {
  const factory _CommentEntity(
      {required final int commentID,
      required final int postID,
      required final int? parentCommentID,
      required final UserMetaData creator,
      required final CommentVotes commentVotes,
      required final String body,
      required final int depth,
      required final DateTime created,
      required final String path,
      required final int originalDepth,
      final DateTime? updated,
      final int childCount,
      final bool saved,
      final bool deleted}) = _$CommentEntityImpl;

  @override
  int get commentID;
  @override
  int get postID;
  @override
  int? get parentCommentID;
  @override
  UserMetaData get creator;
  @override
  CommentVotes get commentVotes;
  @override
  String get body;
  @override
  int get depth;
  @override
  DateTime get created;
  @override
  String get path;
  @override
  int get originalDepth;
  @override
  DateTime? get updated;
  @override
  int get childCount;
  @override
  bool get saved;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$CommentEntityImplCopyWith<_$CommentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentVotes {
  int? get upVote => throw _privateConstructorUsedError;
  int? get downVote => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentVotesCopyWith<CommentVotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentVotesCopyWith<$Res> {
  factory $CommentVotesCopyWith(
          CommentVotes value, $Res Function(CommentVotes) then) =
      _$CommentVotesCopyWithImpl<$Res, CommentVotes>;
  @useResult
  $Res call({int? upVote, int? downVote});
}

/// @nodoc
class _$CommentVotesCopyWithImpl<$Res, $Val extends CommentVotes>
    implements $CommentVotesCopyWith<$Res> {
  _$CommentVotesCopyWithImpl(this._value, this._then);

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
abstract class _$$CommentVotesImplCopyWith<$Res>
    implements $CommentVotesCopyWith<$Res> {
  factory _$$CommentVotesImplCopyWith(
          _$CommentVotesImpl value, $Res Function(_$CommentVotesImpl) then) =
      __$$CommentVotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? upVote, int? downVote});
}

/// @nodoc
class __$$CommentVotesImplCopyWithImpl<$Res>
    extends _$CommentVotesCopyWithImpl<$Res, _$CommentVotesImpl>
    implements _$$CommentVotesImplCopyWith<$Res> {
  __$$CommentVotesImplCopyWithImpl(
      _$CommentVotesImpl _value, $Res Function(_$CommentVotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upVote = freezed,
    Object? downVote = freezed,
  }) {
    return _then(_$CommentVotesImpl(
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

class _$CommentVotesImpl implements _CommentVotes {
  const _$CommentVotesImpl({required this.upVote, required this.downVote});

  @override
  final int? upVote;
  @override
  final int? downVote;

  @override
  String toString() {
    return 'CommentVotes(upVote: $upVote, downVote: $downVote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentVotesImpl &&
            (identical(other.upVote, upVote) || other.upVote == upVote) &&
            (identical(other.downVote, downVote) ||
                other.downVote == downVote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, upVote, downVote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentVotesImplCopyWith<_$CommentVotesImpl> get copyWith =>
      __$$CommentVotesImplCopyWithImpl<_$CommentVotesImpl>(this, _$identity);
}

abstract class _CommentVotes implements CommentVotes {
  const factory _CommentVotes(
      {required final int? upVote,
      required final int? downVote}) = _$CommentVotesImpl;

  @override
  int? get upVote;
  @override
  int? get downVote;
  @override
  @JsonKey(ignore: true)
  _$$CommentVotesImplCopyWith<_$CommentVotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
