// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ev_charge_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EVChargeOptionsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// EVChargeOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  EVChargeOptions call({
    int? connectorCount,
    List<ConnectorAggregation>? connectorAggregation,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEVChargeOptions.copyWith(...)`.
class _$EVChargeOptionsCWProxyImpl implements _$EVChargeOptionsCWProxy {
  const _$EVChargeOptionsCWProxyImpl(this._value);

  final EVChargeOptions _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// EVChargeOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  EVChargeOptions call({
    Object? connectorCount = const $CopyWithPlaceholder(),
    Object? connectorAggregation = const $CopyWithPlaceholder(),
  }) {
    return EVChargeOptions(
      connectorCount: connectorCount == const $CopyWithPlaceholder()
          ? _value.connectorCount
          // ignore: cast_nullable_to_non_nullable
          : connectorCount as int?,
      connectorAggregation: connectorAggregation == const $CopyWithPlaceholder()
          ? _value.connectorAggregation
          // ignore: cast_nullable_to_non_nullable
          : connectorAggregation as List<ConnectorAggregation>?,
    );
  }
}

extension $EVChargeOptionsCopyWith on EVChargeOptions {
  /// Returns a callable class that can be used as follows: `instanceOfEVChargeOptions.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$EVChargeOptionsCWProxy get copyWith => _$EVChargeOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EVChargeOptions _$EVChargeOptionsFromJson(Map<String, dynamic> json) =>
    EVChargeOptions(
      connectorCount: (json['connectorCount'] as num?)?.toInt(),
      connectorAggregation: (json['connectorAggregation'] as List<dynamic>?)
          ?.map((e) => ConnectorAggregation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EVChargeOptionsToJson(EVChargeOptions instance) =>
    <String, dynamic>{
      if (instance.connectorCount case final value?) 'connectorCount': value,
      if (instance.connectorAggregation case final value?)
        'connectorAggregation': value,
    };
