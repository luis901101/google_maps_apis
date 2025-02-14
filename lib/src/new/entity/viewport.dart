import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/entity/lat_lng.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'viewport.g.dart';

/// A latitude-longitude viewport, represented as two diagonally opposite low and
/// high points. A viewport is considered a closed region, i.e. it includes its
/// boundary. The latitude bounds must range between -90 to 90 degrees inclusive,
/// and the longitude bounds must range between -180 to 180 degrees inclusive.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#viewport
@JsonSerializable()
@CopyWith()
class Viewport extends Jsonable<Viewport> {
  final LatLng? low;
  final LatLng? high;

  Viewport({
    this.low,
    this.high,
  });

  factory Viewport.fromJson(Map<String, dynamic> json) {
    return _$ViewportFromJson(json);
  }

  @override
  Viewport? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Viewport.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ViewportToJson(this);
  }
}
