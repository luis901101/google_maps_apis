// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timezone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimezoneResponse _$TimezoneResponseFromJson(Map<String, dynamic> json) =>
    TimezoneResponse(
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorMessage: json['errorMessage'] as String?,
      dstOffset: (json['dstOffset'] as num).toInt(),
      rawOffset: (json['rawOffset'] as num).toInt(),
      timeZoneId: json['timeZoneId'] as String,
      timeZoneName: json['timeZoneName'] as String,
    );

Map<String, dynamic> _$TimezoneResponseToJson(TimezoneResponse instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      'errorMessage': ?instance.errorMessage,
      'dstOffset': instance.dstOffset,
      'rawOffset': instance.rawOffset,
      'timeZoneId': instance.timeZoneId,
      'timeZoneName': instance.timeZoneName,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.ok: 'OK',
  ResponseStatus.zeroResults: 'ZERO_RESULTS',
  ResponseStatus.overQueryLimit: 'OVER_QUERY_LIMIT',
  ResponseStatus.requestDenied: 'REQUEST_DENIED',
  ResponseStatus.invalidRequest: 'INVALID_REQUEST',
  ResponseStatus.unknownError: 'UNKNOWN_ERROR',
  ResponseStatus.notFound: 'NOT_FOUND',
  ResponseStatus.maxWaypointsExceeded: 'MAX_WAYPOINTS_EXCEEDED',
  ResponseStatus.maxRouteLengthExceeded: 'MAX_ROUTE_LENGTH_EXCEEDED',
};
