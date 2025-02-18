import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/localized_text.dart';
import 'package:google_maps_apis/src/new/enums/containment.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'area.g.dart';

/// Area information and the area's relationship with the target location.
///
/// Areas includes precise sublocality, neighborhoods, and large compounds that
/// are useful for describing a location.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#area
@JsonSerializable()
@CopyWith()
class Area extends Jsonable<Area> {
  /// The area's resource name.
  final String? name;

  /// The area's place id.
  final String? placeId;

  /// The area's display name.
  final LocalizedText? displayName;

  /// Defines the spatial relationship between the target location and the area.
  final Containment? containment;

  Area({
    this.name,
    this.placeId,
    this.displayName,
    this.containment,
  });

  factory Area.fromJson(Map<String, dynamic> json) {
    return _$AreaFromJson(json);
  }

  @override
  Area? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Area.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AreaToJson(this);
  }
}
