import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lat_lng.g.dart';

/// An object that represents a latitude/longitude pair. This is expressed as a
/// pair of doubles to represent degrees latitude and degrees longitude. Unless
/// specified otherwise, this object must conform to the WGS84 standard. Values
/// must be within normalized ranges.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#latlng
@JsonSerializable()
@CopyWith()
class LatLng extends Jsonable<LatLng> {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  final double? latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  final double? longitude;

  LatLng({this.latitude, this.longitude});

  factory LatLng.fromJson(Map<String, dynamic> json) {
    return _$LatLngFromJson(json);
  }

  @override
  LatLng? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? LatLng.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LatLngToJson(this);
  }
}
