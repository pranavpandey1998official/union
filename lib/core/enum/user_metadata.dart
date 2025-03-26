import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_metadata.freezed.dart';

@freezed
class UserMetaData with _$UserMetaData {
  const factory UserMetaData({
    required int? id,
    required String? username,
  }) = _UserMetaData;
}