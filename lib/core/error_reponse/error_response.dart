



import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse(
      { @JsonKey(name: 'error') required Error error,
      }) = _ErrorResponse;

  const ErrorResponse._();

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
}

@freezed
class Error with _$Error {
  const factory Error(
      { @JsonKey(name: 'code') required int code,
        @JsonKey(name: 'message')required String message
      }) = _Error;

  const Error._();

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}