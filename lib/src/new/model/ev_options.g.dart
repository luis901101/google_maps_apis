// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ev_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EvOptionsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// EvOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  EvOptions call({
    double? minimumChargingRateKw,
    List<EvConnectorType>? connectorTypes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEvOptions.copyWith(...)`.
class _$EvOptionsCWProxyImpl implements _$EvOptionsCWProxy {
  const _$EvOptionsCWProxyImpl(this._value);

  final EvOptions _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// EvOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  EvOptions call({
    Object? minimumChargingRateKw = const $CopyWithPlaceholder(),
    Object? connectorTypes = const $CopyWithPlaceholder(),
  }) {
    return EvOptions(
      minimumChargingRateKw:
          minimumChargingRateKw == const $CopyWithPlaceholder()
              ? _value.minimumChargingRateKw
              // ignore: cast_nullable_to_non_nullable
              : minimumChargingRateKw as double?,
      connectorTypes: connectorTypes == const $CopyWithPlaceholder()
          ? _value.connectorTypes
          // ignore: cast_nullable_to_non_nullable
          : connectorTypes as List<EvConnectorType>?,
    );
  }
}

extension $EvOptionsCopyWith on EvOptions {
  /// Returns a callable class that can be used as follows: `instanceOfEvOptions.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$EvOptionsCWProxy get copyWith => _$EvOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EvOptions _$EvOptionsFromJson(Map<String, dynamic> json) => EvOptions(
      minimumChargingRateKw:
          (json['minimumChargingRateKw'] as num?)?.toDouble(),
      connectorTypes: (json['connectorTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EvConnectorTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$EvOptionsToJson(EvOptions instance) => <String, dynamic>{
      if (instance.connectorTypes
              ?.map((e) => _$EvConnectorTypeEnumMap[e]!)
              .toList()
          case final value?)
        'connectorTypes': value,
      if (instance.minimumChargingRateKw case final value?)
        'minimumChargingRateKw': value,
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
