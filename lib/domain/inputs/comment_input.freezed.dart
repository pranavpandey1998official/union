// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetSubCommentsInput {
  int get commentID => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetSubCommentsInputCopyWith<GetSubCommentsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSubCommentsInputCopyWith<$Res> {
  factory $GetSubCommentsInputCopyWith(
          GetSubCommentsInput value, $Res Function(GetSubCommentsInput) then) =
      _$GetSubCommentsInputCopyWithImpl<$Res, GetSubCommentsInput>;
  @useResult
  $Res call({int commentID, int depth});
}

/// @nodoc
class _$GetSubCommentsInputCopyWithImpl<$Res, $Val extends GetSubCommentsInput>
    implements $GetSubCommentsInputCopyWith<$Res> {
  _$GetSubCommentsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
    Object? depth = null,
  }) {
    return _then(_value.copyWith(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSubCommentsInputImplCopyWith<$Res>
    implements $GetSubCommentsInputCopyWith<$Res> {
  factory _$$GetSubCommentsInputImplCopyWith(_$GetSubCommentsInputImpl value,
          $Res Function(_$GetSubCommentsInputImpl) then) =
      __$$GetSubCommentsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentID, int depth});
}

/// @nodoc
class __$$GetSubCommentsInputImplCopyWithImpl<$Res>
    extends _$GetSubCommentsInputCopyWithImpl<$Res, _$GetSubCommentsInputImpl>
    implements _$$GetSubCommentsInputImplCopyWith<$Res> {
  __$$GetSubCommentsInputImplCopyWithImpl(_$GetSubCommentsInputImpl _value,
      $Res Function(_$GetSubCommentsInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
    Object? depth = null,
  }) {
    return _then(_$GetSubCommentsInputImpl(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSubCommentsInputImpl implements _GetSubCommentsInput {
  const _$GetSubCommentsInputImpl({required this.commentID, this.depth = 1});

  @override
  final int commentID;
  @override
  @JsonKey()
  final int depth;

  @override
  String toString() {
    return 'GetSubCommentsInput(commentID: $commentID, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCommentsInputImpl &&
            (identical(other.commentID, commentID) ||
                other.commentID == commentID) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentID, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCommentsInputImplCopyWith<_$GetSubCommentsInputImpl> get copyWith =>
      __$$GetSubCommentsInputImplCopyWithImpl<_$GetSubCommentsInputImpl>(
          this, _$identity);
}

abstract class _GetSubCommentsInput implements GetSubCommentsInput {
  const factory _GetSubCommentsInput(
      {required final int commentID,
      final int depth}) = _$GetSubCommentsInputImpl;

  @override
  int get commentID;
  @override
  int get depth;
  @override
  @JsonKey(ignore: true)
  _$$GetSubCommentsInputImplCopyWith<_$GetSubCommentsInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetCommentInput {
  int get commentID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCommentInputCopyWith<GetCommentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentInputCopyWith<$Res> {
  factory $GetCommentInputCopyWith(
          GetCommentInput value, $Res Function(GetCommentInput) then) =
      _$GetCommentInputCopyWithImpl<$Res, GetCommentInput>;
  @useResult
  $Res call({int commentID});
}

/// @nodoc
class _$GetCommentInputCopyWithImpl<$Res, $Val extends GetCommentInput>
    implements $GetCommentInputCopyWith<$Res> {
  _$GetCommentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
  }) {
    return _then(_value.copyWith(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCommentInputImplCopyWith<$Res>
    implements $GetCommentInputCopyWith<$Res> {
  factory _$$GetCommentInputImplCopyWith(_$GetCommentInputImpl value,
          $Res Function(_$GetCommentInputImpl) then) =
      __$$GetCommentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentID});
}

/// @nodoc
class __$$GetCommentInputImplCopyWithImpl<$Res>
    extends _$GetCommentInputCopyWithImpl<$Res, _$GetCommentInputImpl>
    implements _$$GetCommentInputImplCopyWith<$Res> {
  __$$GetCommentInputImplCopyWithImpl(
      _$GetCommentInputImpl _value, $Res Function(_$GetCommentInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentID = null,
  }) {
    return _then(_$GetCommentInputImpl(
      commentID: null == commentID
          ? _value.commentID
          : commentID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCommentInputImpl implements _GetCommentInput {
  const _$GetCommentInputImpl({required this.commentID});

  @override
  final int commentID;

  @override
  String toString() {
    return 'GetCommentInput(commentID: $commentID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentInputImpl &&
            (identical(other.commentID, commentID) ||
                other.commentID == commentID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentInputImplCopyWith<_$GetCommentInputImpl> get copyWith =>
      __$$GetCommentInputImplCopyWithImpl<_$GetCommentInputImpl>(
          this, _$identity);
}

abstract class _GetCommentInput implements GetCommentInput {
  const factory _GetCommentInput({required final int commentID}) =
      _$GetCommentInputImpl;

  @override
  int get commentID;
  @override
  @JsonKey(ignore: true)
  _$$GetCommentInputImplCopyWith<_$GetCommentInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
