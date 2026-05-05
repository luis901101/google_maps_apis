// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [FuelOptions] is to generate the code for a copyWith(...) function.
extension $FuelOptionsCopyWithExtension on FuelOptions {
  FuelOptions copyWith({List<FuelPrice>? fuelPrices}) {
    return FuelOptions(
      fuelPrices:
          ((fuelPrices?.isNotEmpty ?? false) ? fuelPrices : null) ??
          this.fuelPrices,
    );
  }
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
