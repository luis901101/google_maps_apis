// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistanceResponse _$DistanceResponseFromJson(Map<String, dynamic> json) =>
    DistanceResponse(
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      originAddresses: (json['origin_addresses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      destinationAddresses: (json['destination_addresses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => Row.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DistanceResponseToJson(DistanceResponse instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      'error_message': instance.errorMessage,
      'origin_addresses': instance.originAddresses,
      'destination_addresses': instance.destinationAddresses,
      'rows': instance.rows,
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

Row _$RowFromJson(Map<String, dynamic> json) => Row(
      elements: (json['elements'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RowToJson(Row instance) => <String, dynamic>{
      'elements': instance.elements,
    };

Element _$ElementFromJson(Map<String, dynamic> json) => Element(
      distance: Value.fromJson(json['distance'] as Map<String, dynamic>),
      duration: Value.fromJson(json['duration'] as Map<String, dynamic>),
      elementStatus: json['element_status'] as String?,
    );

Map<String, dynamic> _$ElementToJson(Element instance) => <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'element_status': instance.elementStatus,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
      value: json['value'] as num,
      text: json['text'] as String,
    );

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
    };
