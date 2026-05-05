// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ev_charge_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [EVChargeOptions] is to generate the code for a copyWith(...) function.
extension $EVChargeOptionsCopyWithExtension on EVChargeOptions {
  EVChargeOptions copyWith({
    int? connectorCount,
    List<ConnectorAggregation>? connectorAggregation,
  }) {
    return EVChargeOptions(
      connectorCount: connectorCount ?? this.connectorCount,
      connectorAggregation:
          ((connectorAggregation?.isNotEmpty ?? false)
              ? connectorAggregation
              : null) ??
          this.connectorAggregation,
    );
  }
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
      'connectorCount': ?instance.connectorCount,
      'connectorAggregation': ?instance.connectorAggregation,
    };
