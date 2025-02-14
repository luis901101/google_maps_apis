// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector_aggregation.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConnectorAggregationCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ConnectorAggregation(...).copyWith(id: 12, name: "My name")
  /// ````
  ConnectorAggregation call({
    EvConnectorType? type,
    double? maxChargeRateKw,
    int? count,
    DateTime? availabilityLastUpdateTime,
    int? availableCount,
    int? outOfServiceCount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfConnectorAggregation.copyWith(...)`.
class _$ConnectorAggregationCWProxyImpl
    implements _$ConnectorAggregationCWProxy {
  const _$ConnectorAggregationCWProxyImpl(this._value);

  final ConnectorAggregation _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ConnectorAggregation(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfConnectorAggregation.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$ConnectorAggregationCWProxy get copyWith =>
      _$ConnectorAggregationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectorAggregation _$ConnectorAggregationFromJson(
        Map<String, dynamic> json) =>
    ConnectorAggregation(
      type: $enumDecodeNullable(_$EvConnectorTypeEnumMap, json['type'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      maxChargeRateKw: (json['maxChargeRateKw'] as num?)?.toDouble(),
      count: (json['count'] as num?)?.toInt(),
      availabilityLastUpdateTime: json['availabilityLastUpdateTime'] == null
          ? null
          : DateTime.parse(json['availabilityLastUpdateTime'] as String),
      availableCount: (json['availableCount'] as num?)?.toInt(),
      outOfServiceCount: (json['outOfServiceCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ConnectorAggregationToJson(
        ConnectorAggregation instance) =>
    <String, dynamic>{
      if (_$EvConnectorTypeEnumMap[instance.type] case final value?)
        'type': value,
      if (instance.maxChargeRateKw case final value?) 'maxChargeRateKw': value,
      if (instance.count case final value?) 'count': value,
      if (instance.availabilityLastUpdateTime?.toIso8601String()
          case final value?)
        'availabilityLastUpdateTime': value,
      if (instance.availableCount case final value?) 'availableCount': value,
      if (instance.outOfServiceCount case final value?)
        'outOfServiceCount': value,
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
