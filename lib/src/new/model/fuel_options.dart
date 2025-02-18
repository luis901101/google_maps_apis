import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/fuel_price.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fuel_options.g.dart';

/// The most recent information about fuel options in a gas station.
/// This information is updated regularly.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#fueloptions
@JsonSerializable()
@CopyWith()
class FuelOptions extends Jsonable<FuelOptions> {
  /// The last known fuel price for each type of fuel this station has.
  /// There is one entry per fuel type this station has. Order is not important.
  final List<FuelPrice>? fuelPrices;

  FuelOptions({
    this.fuelPrices,
  });

  factory FuelOptions.fromJson(Map<String, dynamic> json) {
    return _$FuelOptionsFromJson(json);
  }

  @override
  FuelOptions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? FuelOptions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$FuelOptionsToJson(this);
  }
}
