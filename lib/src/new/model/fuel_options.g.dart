// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FuelOptionsCWProxy {
  FuelOptions fuelPrices(List<FuelPrice>? fuelPrices);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FuelOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FuelOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  FuelOptions call({List<FuelPrice>? fuelPrices});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfFuelOptions.copyWith(...)` or call `instanceOfFuelOptions.copyWith.fieldName(value)` for a single field.
class _$FuelOptionsCWProxyImpl implements _$FuelOptionsCWProxy {
  const _$FuelOptionsCWProxyImpl(this._value);

  final FuelOptions _value;

  @override
  FuelOptions fuelPrices(List<FuelPrice>? fuelPrices) =>
      call(fuelPrices: fuelPrices);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FuelOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FuelOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  FuelOptions call({Object? fuelPrices = const $CopyWithPlaceholder()}) {
    return FuelOptions(
      fuelPrices: fuelPrices == const $CopyWithPlaceholder()
          ? _value.fuelPrices
          // ignore: cast_nullable_to_non_nullable
          : fuelPrices as List<FuelPrice>?,
    );
  }
}

extension $FuelOptionsCopyWith on FuelOptions {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfFuelOptions.copyWith(...)` or `instanceOfFuelOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FuelOptionsCWProxy get copyWith => _$FuelOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelOptions _$FuelOptionsFromJson(Map<String, dynamic> json) => FuelOptions(
  fuelPrices: (json['fuelPrices'] as List<dynamic>?)
      ?.map((e) => FuelPrice.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FuelOptionsToJson(FuelOptions instance) =>
    <String, dynamic>{'fuelPrices': ?instance.fuelPrices};
