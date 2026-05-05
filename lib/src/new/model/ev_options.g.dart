// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ev_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [EvOptions] is to generate the code for a copyWith(...) function.
extension $EvOptionsCopyWithExtension on EvOptions {
  EvOptions copyWith({
    List<EvConnectorType>? connectorTypes,
    double? minimumChargingRateKw,
  }) {
    return EvOptions(
      connectorTypes:
          ((connectorTypes?.isNotEmpty ?? false) ? connectorTypes : null) ??
          this.connectorTypes,
      minimumChargingRateKw:
          minimumChargingRateKw ?? this.minimumChargingRateKw,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EvOptions _$EvOptionsFromJson(Map<String, dynamic> json) => EvOptions(
  minimumChargingRateKw: (json['minimumChargingRateKw'] as num?)?.toDouble(),
  connectorTypes: (json['connectorTypes'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$EvConnectorTypeEnumMap, e))
      .toList(),
);

Map<String, dynamic> _$EvOptionsToJson(EvOptions instance) => <String, dynamic>{
  'connectorTypes': ?instance.connectorTypes
      ?.map((e) => _$EvConnectorTypeEnumMap[e]!)
      .toList(),
  'minimumChargingRateKw': ?instance.minimumChargingRateKw,
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
