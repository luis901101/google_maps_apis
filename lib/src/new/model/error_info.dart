import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_info.g.dart';

@JsonSerializable(includeIfNull: false)
class ErrorInfo extends Jsonable<ErrorInfo> {
  final int? code;
  final String? message;
  final String? status;
  final dynamic details;

  ErrorInfo({this.code, this.message, this.status, this.details});

  @override
  Map<String, dynamic> toJson() => _$ErrorInfoToJson(this);
  @override
  ErrorInfo? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? ErrorInfo.fromJson(json) : null;
  factory ErrorInfo.fromJson(Map<String, dynamic> json) =>
      _$ErrorInfoFromJson(json);
}
