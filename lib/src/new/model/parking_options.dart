import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parking_options.g.dart';

/// Information about parking options for the place. A parking lot could support
/// more than one option at the same time.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#parkingoptions
@JsonSerializable()
@CopyWith()
class ParkingOptions extends Jsonable<ParkingOptions> {
  /// Place offers free parking lots.
  final bool? freeParkingLot;

  /// Place offers paid parking lots.
  final bool? paidParkingLot;

  /// Place offers free street parking.
  final bool? freeStreetParking;

  /// Place offers paid street parking.
  final bool? paidStreetParking;

  /// Place offers valet parking.
  final bool? valetParking;

  /// Place offers free garage parking.
  final bool? freeGarageParking;

  /// Place offers paid garage parking.
  final bool? paidGarageParking;

  ParkingOptions({
    this.freeParkingLot,
    this.paidParkingLot,
    this.freeStreetParking,
    this.paidStreetParking,
    this.valetParking,
    this.freeGarageParking,
    this.paidGarageParking,
  });

  factory ParkingOptions.fromJson(Map<String, dynamic> json) {
    return _$ParkingOptionsFromJson(json);
  }

  @override
  ParkingOptions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? ParkingOptions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ParkingOptionsToJson(this);
  }
}
