import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'leg.g.dart';

/// A leg is a single portion of a journey from one location to another.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/RoutingSummary#leg
@JsonSerializable()
@CopyWith()
class Leg extends Jsonable<Leg> {
  final String? duration;
  final int? distanceMeters;

  Leg({
    this.duration,
    this.distanceMeters,
  });

  factory Leg.fromJson(Map<String, dynamic> json) {
    return _$LegFromJson(json);
  }

  @override
  Leg? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Leg.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LegToJson(this);
  }
}
