// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ev_charge_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EVChargeOptionsCWProxy {
  EVChargeOptions connectorCount(int? connectorCount);

  EVChargeOptions connectorAggregation(
    List<ConnectorAggregation>? connectorAggregation,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EVChargeOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EVChargeOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  EVChargeOptions call({
    int? connectorCount,
    List<ConnectorAggregation>? connectorAggregation,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEVChargeOptions.copyWith(...)` or call `instanceOfEVChargeOptions.copyWith.fieldName(value)` for a single field.
class _$EVChargeOptionsCWProxyImpl implements _$EVChargeOptionsCWProxy {
  const _$EVChargeOptionsCWProxyImpl(this._value);

  final EVChargeOptions _value;

  @override
  EVChargeOptions connectorCount(int? connectorCount) =>
      call(connectorCount: connectorCount);

  @override
  EVChargeOptions connectorAggregation(
    List<ConnectorAggregation>? connectorAggregation,
  ) => call(connectorAggregation: connectorAggregation);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EVChargeOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EVChargeOptions(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEVChargeOptions.copyWith(...)` or `instanceOfEVChargeOptions.copyWith.fieldName(...)`.
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
      'connectorCount': ?instance.connectorCount,
      'connectorAggregation': ?instance.connectorAggregation,
    };
