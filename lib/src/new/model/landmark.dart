import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/localized_text.dart';
import 'package:google_maps_apis/src/new/enums/place_type.dart';
import 'package:google_maps_apis/src/new/enums/spatial_relationship.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'landmark.g.dart';

/// Basic landmark information and the landmark's relationship with the target location.
///
/// Landmarks are prominent places that can be used to describe a location.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#landmark
@JsonSerializable()
@CopyWith()
class Landmark extends Jsonable<Landmark> {
  /// The landmark's resource name.
  final String? name;

  /// The landmark's place id.
  final String? placeId;

  /// The landmark's display name.
  final LocalizedText? displayName;

  /// A set of type tags for this landmark. For a complete list of possible values,
  /// see https://developers.google.com/maps/documentation/places/web-service/place-types.
  /// Or [PlaceType.values]
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? types;

  /// Defines the spatial relationship between the target location and the landmark.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final SpatialRelationship? spatialRelationship;

  /// The straight line distance, in meters, between the center point of the target
  /// and the center point of the landmark. In some situations, this value can
  /// be longer than [travelDistanceMeters].
  final double? straightLineDistanceMeters;

  /// The travel distance, in meters, along the road network from the target to
  /// the landmark, if known. This value does not take into account the mode of
  /// transportation, such as walking, driving, or biking.
  final double? travelDistanceMeters;

  Landmark({
    this.name,
    this.placeId,
    this.displayName,
    this.types,
    this.spatialRelationship,
    this.straightLineDistanceMeters,
    this.travelDistanceMeters,
  });

  factory Landmark.fromJson(Map<String, dynamic> json) {
    return _$LandmarkFromJson(json);
  }

  @override
  Landmark? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Landmark.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LandmarkToJson(this);
  }
}
