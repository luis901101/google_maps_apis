// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector_aggregation.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConnectorAggregationCWProxy {
  ConnectorAggregation type(EvConnectorType? type);

  ConnectorAggregation maxChargeRateKw(double? maxChargeRateKw);

  ConnectorAggregation count(int? count);

  ConnectorAggregation availabilityLastUpdateTime(
    DateTime? availabilityLastUpdateTime,
  );

  ConnectorAggregation availableCount(int? availableCount);

  ConnectorAggregation outOfServiceCount(int? outOfServiceCount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConnectorAggregation(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConnectorAggregation(...).copyWith(id: 12, name: "My name")
  /// ```
  ConnectorAggregation call({
    EvConnectorType? type,
    double? maxChargeRateKw,
    int? count,
    DateTime? availabilityLastUpdateTime,
    int? availableCount,
    int? outOfServiceCount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConnectorAggregation.copyWith(...)` or call `instanceOfConnectorAggregation.copyWith.fieldName(value)` for a single field.
class _$ConnectorAggregationCWProxyImpl
    implements _$ConnectorAggregationCWProxy {
  const _$ConnectorAggregationCWProxyImpl(this._value);

  final ConnectorAggregation _value;

  @override
  ConnectorAggregation type(EvConnectorType? type) => call(type: type);

  @override
  ConnectorAggregation maxChargeRateKw(double? maxChargeRateKw) =>
      call(maxChargeRateKw: maxChargeRateKw);

  @override
  ConnectorAggregation count(int? count) => call(count: count);

  @override
  ConnectorAggregation availabilityLastUpdateTime(
    DateTime? availabilityLastUpdateTime,
  ) => call(availabilityLastUpdateTime: availabilityLastUpdateTime);

  @override
  ConnectorAggregation availableCount(int? availableCount) =>
      call(availableCount: availableCount);

  @override
  ConnectorAggregation outOfServiceCount(int? outOfServiceCount) =>
      call(outOfServiceCount: outOfServiceCount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConnectorAggregation(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConnectorAggregation(...).copyWith(id: 12, name: "My name")
  /// ```
  ConnectorAggregation call({
    Object? type = const $CopyWithPlaceholder(),
    Object? maxChargeRateKw = const $CopyWithPlaceholder(),
    Object? count = const $CopyWithPlaceholder(),
    Object? availabilityLastUpdateTime = const $CopyWithPlaceholder(),
    Object? availableCount = const $CopyWithPlaceholder(),
    Object? outOfServiceCount = const $CopyWithPlaceholder(),
  }) {
    return ConnectorAggregation(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as EvConnectorType?,
      maxChargeRateKw: maxChargeRateKw == const $CopyWithPlaceholder()
          ? _value.maxChargeRateKw
          // ignore: cast_nullable_to_non_nullable
          : maxChargeRateKw as double?,
      count: count == const $CopyWithPlaceholder()
          ? _value.count
          // ignore: cast_nullable_to_non_nullable
          : count as int?,
      availabilityLastUpdateTime:
          availabilityLastUpdateTime == const $CopyWithPlaceholder()
          ? _value.availabilityLastUpdateTime
          // ignore: cast_nullable_to_non_nullable
          : availabilityLastUpdateTime as DateTime?,
      availableCount: availableCount == const $CopyWithPlaceholder()
          ? _value.availableCount
          // ignore: cast_nullable_to_non_nullable
          : availableCount as int?,
      outOfServiceCount: outOfServiceCount == const $CopyWithPlaceholder()
          ? _value.outOfServiceCount
          // ignore: cast_nullable_to_non_nullable
          : outOfServiceCount as int?,
    );
  }
}

extension $ConnectorAggregationCopyWith on ConnectorAggregation {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConnectorAggregation.copyWith(...)` or `instanceOfConnectorAggregation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConnectorAggregationCWProxy get copyWith =>
      _$ConnectorAggregationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectorAggregation _$ConnectorAggregationFromJson(
  Map<String, dynamic> json,
) => ConnectorAggregation(
  type: $enumDecodeNullable(
    _$EvConnectorTypeEnumMap,
    json['type'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  maxChargeRateKw: (json['maxChargeRateKw'] as num?)?.toDouble(),
  count: (json['count'] as num?)?.toInt(),
  availabilityLastUpdateTime: json['availabilityLastUpdateTime'] == null
      ? null
      : DateTime.parse(json['availabilityLastUpdateTime'] as String),
  availableCount: (json['availableCount'] as num?)?.toInt(),
  outOfServiceCount: (json['outOfServiceCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ConnectorAggregationToJson(
  ConnectorAggregation instance,
) => <String, dynamic>{
  'type': ?_$EvConnectorTypeEnumMap[instance.type],
  'maxChargeRateKw': ?instance.maxChargeRateKw,
  'count': ?instance.count,
  'availabilityLastUpdateTime': ?instance.availabilityLastUpdateTime
      ?.toIso8601String(),
  'availableCount': ?instance.availableCount,
  'outOfServiceCount': ?instance.outOfServiceCount,
};

const _$EvConnectorTypeEnumMap = {
  EvConnectorType.unspecified: 'EV_CONNECTOR_TYPE_UNSPECIFIED',
  EvConnectorType.other: 'EV_CONNECTOR_TYPE_OTHER',
  EvConnectorType.j1772: 'EV_CONNECTOR_TYPE_J1772',
  EvConnectorType.type2: 'EV_CONNECTOR_TYPE_TYPE_2',
  EvConnectorType.chademo: 'EV_CONNECTOR_TYPE_CHADEMO',
  EvConnectorType.ccsCombo1: 'EV_CONNECTOR_TYPE_CCS_COMBO_1',
  EvConnectorType.ccsCombo2: 'EV_CONNECTOR_TYPE_CCS_COMBO_2',
  EvConnectorType.tesla: 'EV_CONNECTOR_TYPE_TESLA',
  EvConnectorType.unspecifiedGBT: 'EV_CONNECTOR_TYPE_UNSPECIFIED_GB_T',
  EvConnectorType.unspecifiedWallOutlet:
      'EV_CONNECTOR_TYPE_UNSPECIFIED_WALL_OUTLET',
};
