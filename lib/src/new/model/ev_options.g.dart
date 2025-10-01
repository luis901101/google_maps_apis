// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ev_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EvOptionsCWProxy {
  EvOptions minimumChargingRateKw(double? minimumChargingRateKw);

  EvOptions connectorTypes(List<EvConnectorType>? connectorTypes);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EvOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EvOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  EvOptions call({
    double? minimumChargingRateKw,
    List<EvConnectorType>? connectorTypes,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEvOptions.copyWith(...)` or call `instanceOfEvOptions.copyWith.fieldName(value)` for a single field.
class _$EvOptionsCWProxyImpl implements _$EvOptionsCWProxy {
  const _$EvOptionsCWProxyImpl(this._value);

  final EvOptions _value;

  @override
  EvOptions minimumChargingRateKw(double? minimumChargingRateKw) =>
      call(minimumChargingRateKw: minimumChargingRateKw);

  @override
  EvOptions connectorTypes(List<EvConnectorType>? connectorTypes) =>
      call(connectorTypes: connectorTypes);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EvOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EvOptions(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEvOptions.copyWith(...)` or `instanceOfEvOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EvOptionsCWProxy get copyWith => _$EvOptionsCWProxyImpl(this);
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
