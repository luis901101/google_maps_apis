// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FuelOptionsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// FuelOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  FuelOptions call({
    List<FuelPrice>? fuelPrices,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFuelOptions.copyWith(...)`.
class _$FuelOptionsCWProxyImpl implements _$FuelOptionsCWProxy {
  const _$FuelOptionsCWProxyImpl(this._value);

  final FuelOptions _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// FuelOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  FuelOptions call({
    Object? fuelPrices = const $CopyWithPlaceholder(),
  }) {
    return FuelOptions(
      fuelPrices: fuelPrices == const $CopyWithPlaceholder()
          ? _value.fuelPrices
          // ignore: cast_nullable_to_non_nullable
          : fuelPrices as List<FuelPrice>?,
    );
  }
}

extension $FuelOptionsCopyWith on FuelOptions {
  /// Returns a callable class that can be used as follows: `instanceOfFuelOptions.copyWith(...)`.
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
    <String, dynamic>{
      if (instance.fuelPrices case final value?) 'fuelPrices': value,
    };
