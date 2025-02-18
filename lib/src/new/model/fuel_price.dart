import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/money.dart';
import 'package:google_maps_apis/src/new/enums/fuel_type.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fuel_price.g.dart';

/// Fuel price information for a given type.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#fuelprice
@JsonSerializable()
@CopyWith()
class FuelPrice extends Jsonable<FuelPrice> {
  /// The type of fuel.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final FuelType? type;

  /// The price of the fuel.
  final Money? price;

  /// The time the fuel price was last updated.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final DateTime? updateTime;

  FuelPrice({
    this.type,
    this.price,
    this.updateTime,
  });

  factory FuelPrice.fromJson(Map<String, dynamic> json) {
    return _$FuelPriceFromJson(json);
  }

  @override
  FuelPrice? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? FuelPrice.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$FuelPriceToJson(this);
  }
}
