// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorInfo _$ErrorInfoFromJson(Map<String, dynamic> json) => ErrorInfo(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  status: json['status'] as String?,
  details: json['details'],
);

Map<String, dynamic> _$ErrorInfoToJson(ErrorInfo instance) => <String, dynamic>{
  'code': ?instance.code,
  'message': ?instance.message,
  'status': ?instance.status,
  'details': ?instance.details,
};
