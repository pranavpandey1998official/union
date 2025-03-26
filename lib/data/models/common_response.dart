

import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response.freezed.dart';
part 'common_response.g.dart';


// Object is act as both Entity and Model
@freezed
class SuccessObject with _$SuccessObject {
  const factory SuccessObject({
    required bool success
  }) = _SuccessObject;
  factory SuccessObject.fromJson(Map<String, dynamic> json) => _$SuccessObjectFromJson(json);
}

extension SuccessObjectExtension on SuccessObject {
  SuccessObject toDomain() =>  SuccessObject(
    success: success
  );
}