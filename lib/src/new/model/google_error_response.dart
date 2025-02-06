import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/error_info.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'google_error_response.g.dart';

/// It is a wrapper for error responses from network calls
@JsonSerializable()
@CopyWith()
class GoogleErrorResponse extends Jsonable<GoogleErrorResponse> {
  List<ErrorInfo> errors;
  List<String> messages;

  GoogleErrorResponse({
    List<ErrorInfo>? errors,
    List<String>? messages,
  })  : errors = errors ?? [],
        messages = messages ?? [];

  @override
  Map<String, dynamic> toJson() => _$GoogleErrorResponseToJson(this);

  @override
  GoogleErrorResponse? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? GoogleErrorResponse.fromJson(json) : null;

  factory GoogleErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleErrorResponseFromJson(json);
}
