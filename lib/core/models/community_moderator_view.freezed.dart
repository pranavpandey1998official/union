// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_moderator_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommunityModeratorView {
  CommunityEntity get community => throw _privateConstructorUsedError;
  UserEntity get moderator => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunityModeratorViewCopyWith<CommunityModeratorView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityModeratorViewCopyWith<$Res> {
  factory $CommunityModeratorViewCopyWith(CommunityModeratorView value,
          $Res Function(CommunityModeratorView) then) =
      _$CommunityModeratorViewCopyWithImpl<$Res, CommunityModeratorView>;
  @useResult
  $Res call({CommunityEntity community, UserEntity moderator});

  $CommunityEntityCopyWith<$Res> get community;
  $UserEntityCopyWith<$Res> get moderator;
}

/// @nodoc
class _$CommunityModeratorViewCopyWithImpl<$Res,
        $Val extends CommunityModeratorView>
    implements $CommunityModeratorViewCopyWith<$Res> {
  _$CommunityModeratorViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? community = null,
    Object? moderator = null,
  }) {
    return _then(_value.copyWith(
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as CommunityEntity,
      moderator: null == moderator
          ? _value.moderator
          : moderator // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommunityEntityCopyWith<$Res> get community {
    return $CommunityEntityCopyWith<$Res>(_value.community, (value) {
      return _then(_value.copyWith(community: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get moderator {
    return $UserEntityCopyWith<$Res>(_value.moderator, (value) {
      return _then(_value.copyWith(moderator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommunityModeratorViewImplCopyWith<$Res>
    implements $CommunityModeratorViewCopyWith<$Res> {
  factory _$$CommunityModeratorViewImplCopyWith(
          _$CommunityModeratorViewImpl value,
          $Res Function(_$CommunityModeratorViewImpl) then) =
      __$$CommunityModeratorViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommunityEntity community, UserEntity moderator});

  @override
  $CommunityEntityCopyWith<$Res> get community;
  @override
  $UserEntityCopyWith<$Res> get moderator;
}

/// @nodoc
class __$$CommunityModeratorViewImplCopyWithImpl<$Res>
    extends _$CommunityModeratorViewCopyWithImpl<$Res,
        _$CommunityModeratorViewImpl>
    implements _$$CommunityModeratorViewImplCopyWith<$Res> {
  __$$CommunityModeratorViewImplCopyWithImpl(
      _$CommunityModeratorViewImpl _value,
      $Res Function(_$CommunityModeratorViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? community = null,
    Object? moderator = null,
  }) {
    return _then(_$CommunityModeratorViewImpl(
      community: null == community
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as CommunityEntity,
      moderator: null == moderator
          ? _value.moderator
          : moderator // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$CommunityModeratorViewImpl implements _CommunityModeratorView {
  const _$CommunityModeratorViewImpl(
      {required this.community, required this.moderator});

  @override
  final CommunityEntity community;
  @override
  final UserEntity moderator;

  @override
  String toString() {
    return 'CommunityModeratorView(community: $community, moderator: $moderator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityModeratorViewImpl &&
            (identical(other.community, community) ||
                other.community == community) &&
            (identical(other.moderator, moderator) ||
                other.moderator == moderator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, community, moderator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityModeratorViewImplCopyWith<_$CommunityModeratorViewImpl>
      get copyWith => __$$CommunityModeratorViewImplCopyWithImpl<
          _$CommunityModeratorViewImpl>(this, _$identity);
}

abstract class _CommunityModeratorView implements CommunityModeratorView {
  const factory _CommunityModeratorView(
      {required final CommunityEntity community,
      required final UserEntity moderator}) = _$CommunityModeratorViewImpl;

  @override
  CommunityEntity get community;
  @override
  UserEntity get moderator;
  @override
  @JsonKey(ignore: true)
  _$$CommunityModeratorViewImplCopyWith<_$CommunityModeratorViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}
