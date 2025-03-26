// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPostInput {
  int get postID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPostInputCopyWith<GetPostInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostInputCopyWith<$Res> {
  factory $GetPostInputCopyWith(
          GetPostInput value, $Res Function(GetPostInput) then) =
      _$GetPostInputCopyWithImpl<$Res, GetPostInput>;
  @useResult
  $Res call({int postID});
}

/// @nodoc
class _$GetPostInputCopyWithImpl<$Res, $Val extends GetPostInput>
    implements $GetPostInputCopyWith<$Res> {
  _$GetPostInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
  }) {
    return _then(_value.copyWith(
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostInputImplCopyWith<$Res>
    implements $GetPostInputCopyWith<$Res> {
  factory _$$GetPostInputImplCopyWith(
          _$GetPostInputImpl value, $Res Function(_$GetPostInputImpl) then) =
      __$$GetPostInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postID});
}

/// @nodoc
class __$$GetPostInputImplCopyWithImpl<$Res>
    extends _$GetPostInputCopyWithImpl<$Res, _$GetPostInputImpl>
    implements _$$GetPostInputImplCopyWith<$Res> {
  __$$GetPostInputImplCopyWithImpl(
      _$GetPostInputImpl _value, $Res Function(_$GetPostInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
  }) {
    return _then(_$GetPostInputImpl(
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPostInputImpl implements _GetPostInput {
  const _$GetPostInputImpl({required this.postID});

  @override
  final int postID;

  @override
  String toString() {
    return 'GetPostInput(postID: $postID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostInputImpl &&
            (identical(other.postID, postID) || other.postID == postID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostInputImplCopyWith<_$GetPostInputImpl> get copyWith =>
      __$$GetPostInputImplCopyWithImpl<_$GetPostInputImpl>(this, _$identity);
}

abstract class _GetPostInput implements GetPostInput {
  const factory _GetPostInput({required final int postID}) = _$GetPostInputImpl;

  @override
  int get postID;
  @override
  @JsonKey(ignore: true)
  _$$GetPostInputImplCopyWith<_$GetPostInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAllCommentsForPostInput {
  int get postID => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAllCommentsForPostInputCopyWith<GetAllCommentsForPostInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllCommentsForPostInputCopyWith<$Res> {
  factory $GetAllCommentsForPostInputCopyWith(GetAllCommentsForPostInput value,
          $Res Function(GetAllCommentsForPostInput) then) =
      _$GetAllCommentsForPostInputCopyWithImpl<$Res,
          GetAllCommentsForPostInput>;
  @useResult
  $Res call({int postID, int depth});
}

/// @nodoc
class _$GetAllCommentsForPostInputCopyWithImpl<$Res,
        $Val extends GetAllCommentsForPostInput>
    implements $GetAllCommentsForPostInputCopyWith<$Res> {
  _$GetAllCommentsForPostInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
    Object? depth = null,
  }) {
    return _then(_value.copyWith(
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCommentsForPostInputImplCopyWith<$Res>
    implements $GetAllCommentsForPostInputCopyWith<$Res> {
  factory _$$GetAllCommentsForPostInputImplCopyWith(
          _$GetAllCommentsForPostInputImpl value,
          $Res Function(_$GetAllCommentsForPostInputImpl) then) =
      __$$GetAllCommentsForPostInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postID, int depth});
}

/// @nodoc
class __$$GetAllCommentsForPostInputImplCopyWithImpl<$Res>
    extends _$GetAllCommentsForPostInputCopyWithImpl<$Res,
        _$GetAllCommentsForPostInputImpl>
    implements _$$GetAllCommentsForPostInputImplCopyWith<$Res> {
  __$$GetAllCommentsForPostInputImplCopyWithImpl(
      _$GetAllCommentsForPostInputImpl _value,
      $Res Function(_$GetAllCommentsForPostInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
    Object? depth = null,
  }) {
    return _then(_$GetAllCommentsForPostInputImpl(
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAllCommentsForPostInputImpl implements _GetAllCommentsForPostInput {
  const _$GetAllCommentsForPostInputImpl(
      {required this.postID, required this.depth});

  @override
  final int postID;
  @override
  final int depth;

  @override
  String toString() {
    return 'GetAllCommentsForPostInput(postID: $postID, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCommentsForPostInputImpl &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postID, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCommentsForPostInputImplCopyWith<_$GetAllCommentsForPostInputImpl>
      get copyWith => __$$GetAllCommentsForPostInputImplCopyWithImpl<
          _$GetAllCommentsForPostInputImpl>(this, _$identity);
}

abstract class _GetAllCommentsForPostInput
    implements GetAllCommentsForPostInput {
  const factory _GetAllCommentsForPostInput(
      {required final int postID,
      required final int depth}) = _$GetAllCommentsForPostInputImpl;

  @override
  int get postID;
  @override
  int get depth;
  @override
  @JsonKey(ignore: true)
  _$$GetAllCommentsForPostInputImplCopyWith<_$GetAllCommentsForPostInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatePostInput {
  int get communityID => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isNSFW => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePostInputCopyWith<CreatePostInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostInputCopyWith<$Res> {
  factory $CreatePostInputCopyWith(
          CreatePostInput value, $Res Function(CreatePostInput) then) =
      _$CreatePostInputCopyWithImpl<$Res, CreatePostInput>;
  @useResult
  $Res call(
      {int communityID, String title, String type, bool isNSFW, String body});
}

/// @nodoc
class _$CreatePostInputCopyWithImpl<$Res, $Val extends CreatePostInput>
    implements $CreatePostInputCopyWith<$Res> {
  _$CreatePostInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
    Object? title = null,
    Object? type = null,
    Object? isNSFW = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      communityID: null == communityID
          ? _value.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isNSFW: null == isNSFW
          ? _value.isNSFW
          : isNSFW // ignore: cast_nullable_to_non_nullable
              as bool,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePostInputImplCopyWith<$Res>
    implements $CreatePostInputCopyWith<$Res> {
  factory _$$CreatePostInputImplCopyWith(_$CreatePostInputImpl value,
          $Res Function(_$CreatePostInputImpl) then) =
      __$$CreatePostInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int communityID, String title, String type, bool isNSFW, String body});
}

/// @nodoc
class __$$CreatePostInputImplCopyWithImpl<$Res>
    extends _$CreatePostInputCopyWithImpl<$Res, _$CreatePostInputImpl>
    implements _$$CreatePostInputImplCopyWith<$Res> {
  __$$CreatePostInputImplCopyWithImpl(
      _$CreatePostInputImpl _value, $Res Function(_$CreatePostInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? communityID = null,
    Object? title = null,
    Object? type = null,
    Object? isNSFW = null,
    Object? body = null,
  }) {
    return _then(_$CreatePostInputImpl(
      communityID: null == communityID
          ? _value.communityID
          : communityID // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isNSFW: null == isNSFW
          ? _value.isNSFW
          : isNSFW // ignore: cast_nullable_to_non_nullable
              as bool,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatePostInputImpl implements _CreatePostInput {
  const _$CreatePostInputImpl(
      {required this.communityID,
      required this.title,
      required this.type,
      required this.isNSFW,
      required this.body});

  @override
  final int communityID;
  @override
  final String title;
  @override
  final String type;
  @override
  final bool isNSFW;
  @override
  final String body;

  @override
  String toString() {
    return 'CreatePostInput(communityID: $communityID, title: $title, type: $type, isNSFW: $isNSFW, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostInputImpl &&
            (identical(other.communityID, communityID) ||
                other.communityID == communityID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isNSFW, isNSFW) || other.isNSFW == isNSFW) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, communityID, title, type, isNSFW, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostInputImplCopyWith<_$CreatePostInputImpl> get copyWith =>
      __$$CreatePostInputImplCopyWithImpl<_$CreatePostInputImpl>(
          this, _$identity);
}

abstract class _CreatePostInput implements CreatePostInput {
  const factory _CreatePostInput(
      {required final int communityID,
      required final String title,
      required final String type,
      required final bool isNSFW,
      required final String body}) = _$CreatePostInputImpl;

  @override
  int get communityID;
  @override
  String get title;
  @override
  String get type;
  @override
  bool get isNSFW;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$CreatePostInputImplCopyWith<_$CreatePostInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
