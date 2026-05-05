// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector_aggregation.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [ConnectorAggregation] is to generate the code for a copyWith(...) function.
extension $ConnectorAggregationCopyWithExtension on ConnectorAggregation {
  ConnectorAggregation copyWith({
    EvConnectorType? type,
    double? maxChargeRateKw,
    int? count,
    DateTime? availabilityLastUpdateTime,
    int? availableCount,
    int? outOfServiceCount,
  }) {
    return ConnectorAggregation(
      type: type ?? this.type,
      maxChargeRateKw: maxChargeRateKw ?? this.maxChargeRateKw,
      count: count ?? this.count,
      availabilityLastUpdateTime:
          availabilityLastUpdateTime ?? this.availabilityLastUpdateTime,
      availableCount: availableCount ?? this.availableCount,
      outOfServiceCount: outOfServiceCount ?? this.outOfServiceCount,
    );
  }
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
