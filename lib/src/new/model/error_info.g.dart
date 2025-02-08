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

abstract final class _$ErrorInfoJsonKeys {
  static const String code = 'code';
  static const String message = 'message';
  static const String status = 'status';
  static const String details = 'details';
}

Map<String, dynamic> _$ErrorInfoToJson(ErrorInfo instance) => <String, dynamic>{
      if (instance.code case final value?) 'code': value,
      if (instance.message case final value?) 'message': value,
      if (instance.status case final value?) 'status': value,
      if (instance.details case final value?) 'details': value,
    };
