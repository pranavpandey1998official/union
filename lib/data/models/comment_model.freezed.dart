// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  @JsonKey(name: 'id')
  int? get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentPostID')
  int? get parentPostID => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentCommentID')
  int? get parentCommentID => throw _privateConstructorUsedError;
  @JsonKey(name: 'communityID')
  int? get communityID => throw _privateConstructorUsedError;
  @JsonKey(name: 'immediateChildrenCount')
  int? get immediateChildren => throw _privateConstructorUsedError;
  @JsonKey(name: 'pathFromRoot')
  String? get pathFromRoot => throw _privateConstructorUsedError;
  @JsonKey(name: 'upVote')
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'downVote')
  bool? get isMember => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator')
  bool? get isBlocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? commentId,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'created') DateTime? created,
      @JsonKey(name: 'parentPostID') int? parentPostID,
      @JsonKey(name: 'parentCommentID') int? parentCommentID,
      @JsonKey(name: 'communityID') int? communityID,
      @JsonKey(name: 'immediateChildrenCount') int? immediateChildren,
      @JsonKey(name: 'pathFromRoot') String? pathFromRoot,
      @JsonKey(name: 'upVote') int? memberCount,
      @JsonKey(name: 'downVote') bool? isMember,
      @JsonKey(name: 'creator') bool? isBlocked});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = freezed,
    Object? body = freezed,
    Object? created = freezed,
    Object? parentPostID = freezed,
    Object? parentCommentID = freezed,
    Object? communityID = freezed,
    Object? immediateChildren = freezed,
    Object? pathFromRoot = freezed,
    Object? memberCount = freezed,
    Object? isMember = freezed,
    Object? isBlocked = freezed,
  }) {
    return _then(_value.copyWith(
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentPostID: freezed == parentPostID
          ? _value.parentPostID
          : parentPostID // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCommentID: freezed == parentCommentID
          ? _value.parentCommentID
          : parentCommentID // ignore: cast_nullable_to_non_nullable
              as int?,
      communityID: freezed == communityID
          ? _value.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int?,
      immediateChildren: freezed == immediateChildren
          ? _value.immediateChildren
          : immediateChildren // ignore: cast_nullable_to_non_nullable
              as int?,
      pathFromRoot: freezed == pathFromRoot
          ? _value.pathFromRoot
          : pathFromRoot // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isMember: freezed == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? commentId,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'created') DateTime? created,
      @JsonKey(name: 'parentPostID') int? parentPostID,
      @JsonKey(name: 'parentCommentID') int? parentCommentID,
      @JsonKey(name: 'communityID') int? communityID,
      @JsonKey(name: 'immediateChildrenCount') int? immediateChildren,
      @JsonKey(name: 'pathFromRoot') String? pathFromRoot,
      @JsonKey(name: 'upVote') int? memberCount,
      @JsonKey(name: 'downVote') bool? isMember,
      @JsonKey(name: 'creator') bool? isBlocked});
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
      _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = freezed,
    Object? body = freezed,
    Object? created = freezed,
    Object? parentPostID = freezed,
    Object? parentCommentID = freezed,
    Object? communityID = freezed,
    Object? immediateChildren = freezed,
    Object? pathFromRoot = freezed,
    Object? memberCount = freezed,
    Object? isMember = freezed,
    Object? isBlocked = freezed,
  }) {
    return _then(_$CommentModelImpl(
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentPostID: freezed == parentPostID
          ? _value.parentPostID
          : parentPostID // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCommentID: freezed == parentCommentID
          ? _value.parentCommentID
          : parentCommentID // ignore: cast_nullable_to_non_nullable
              as int?,
      communityID: freezed == communityID
          ? _value.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int?,
      immediateChildren: freezed == immediateChildren
          ? _value.immediateChildren
          : immediateChildren // ignore: cast_nullable_to_non_nullable
              as int?,
      pathFromRoot: freezed == pathFromRoot
          ? _value.pathFromRoot
          : pathFromRoot // ignore: cast_nullable_to_non_nullable
              as String?,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isMember: freezed == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl extends _CommentModel {
  const _$CommentModelImpl(
      {@JsonKey(name: 'id') this.commentId,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'created') this.created,
      @JsonKey(name: 'parentPostID') this.parentPostID,
      @JsonKey(name: 'parentCommentID') this.parentCommentID,
      @JsonKey(name: 'communityID') this.communityID,
      @JsonKey(name: 'immediateChildrenCount') this.immediateChildren,
      @JsonKey(name: 'pathFromRoot') this.pathFromRoot,
      @JsonKey(name: 'upVote') this.memberCount,
      @JsonKey(name: 'downVote') this.isMember,
      @JsonKey(name: 'creator') this.isBlocked})
      : super._();

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? commentId;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'created')
  final DateTime? created;
  @override
  @JsonKey(name: 'parentPostID')
  final int? parentPostID;
  @override
  @JsonKey(name: 'parentCommentID')
  final int? parentCommentID;
  @override
  @JsonKey(name: 'communityID')
  final int? communityID;
  @override
  @JsonKey(name: 'immediateChildrenCount')
  final int? immediateChildren;
  @override
  @JsonKey(name: 'pathFromRoot')
  final String? pathFromRoot;
  @override
  @JsonKey(name: 'upVote')
  final int? memberCount;
  @override
  @JsonKey(name: 'downVote')
  final bool? isMember;
  @override
  @JsonKey(name: 'creator')
  final bool? isBlocked;

  @override
  String toString() {
    return 'CommentModel(commentId: $commentId, body: $body, created: $created, parentPostID: $parentPostID, parentCommentID: $parentCommentID, communityID: $communityID, immediateChildren: $immediateChildren, pathFromRoot: $pathFromRoot, memberCount: $memberCount, isMember: $isMember, isBlocked: $isBlocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.parentPostID, parentPostID) ||
                other.parentPostID == parentPostID) &&
            (identical(other.parentCommentID, parentCommentID) ||
                other.parentCommentID == parentCommentID) &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.immediateChildren, immediateChildren) ||
                other.immediateChildren == immediateChildren) &&
            (identical(other.pathFromRoot, pathFromRoot) ||
                other.pathFromRoot == pathFromRoot) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentId,
      body,
      created,
      parentPostID,
      parentCommentID,
      communityID,
      immediateChildren,
      pathFromRoot,
      memberCount,
      isMember,
      isBlocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentModelImplToJson(
      this,
    );
  }
}

abstract class _CommentModel extends CommentModel {
  const factory _CommentModel(
      {@JsonKey(name: 'id') final int? commentId,
      @JsonKey(name: 'body') final String? body,
      @JsonKey(name: 'created') final DateTime? created,
      @JsonKey(name: 'parentPostID') final int? parentPostID,
      @JsonKey(name: 'parentCommentID') final int? parentCommentID,
      @JsonKey(name: 'communityID') final int? communityID,
      @JsonKey(name: 'immediateChildrenCount') final int? immediateChildren,
      @JsonKey(name: 'pathFromRoot') final String? pathFromRoot,
      @JsonKey(name: 'upVote') final int? memberCount,
      @JsonKey(name: 'downVote') final bool? isMember,
      @JsonKey(name: 'creator') final bool? isBlocked}) = _$CommentModelImpl;
  const _CommentModel._() : super._();

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get commentId;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'created')
  DateTime? get created;
  @override
  @JsonKey(name: 'parentPostID')
  int? get parentPostID;
  @override
  @JsonKey(name: 'parentCommentID')
  int? get parentCommentID;
  @override
  @JsonKey(name: 'communityID')
  int? get communityID;
  @override
  @JsonKey(name: 'immediateChildrenCount')
  int? get immediateChildren;
  @override
  @JsonKey(name: 'pathFromRoot')
  String? get pathFromRoot;
  @override
  @JsonKey(name: 'upVote')
  int? get memberCount;
  @override
  @JsonKey(name: 'downVote')
  bool? get isMember;
  @override
  @JsonKey(name: 'creator')
  bool? get isBlocked;
  @override
  @JsonKey(ignore: true)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
