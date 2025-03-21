import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Defines the spatial relationship between the target location and the landmark.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#spatialrelationship
enum SpatialRelationship {
  /// This is the default relationship when nothing more specific below applies.
  @JsonValue('NEAR')
  near('NEAR'),

  /// The landmark has a spatial geometry and the target is within its bounds.
  @JsonValue('WITHIN')
  within('WITHIN'),

  /// The target is directly adjacent to the landmark.
  @JsonValue('BESIDE')
  beside('BESIDE'),

  /// The target is directly opposite the landmark on the other side of the road.
  @JsonValue('ACROSS_THE_ROAD')
  acrossTheRoad('ACROSS_THE_ROAD'),

  /// On the same route as the landmark but not besides or across.
  @JsonValue('DOWN_THE_ROAD')
  downTheRoad('DOWN_THE_ROAD'),

  /// Not on the same route as the landmark but a single turn away.
  @JsonValue('AROUND_THE_CORNER')
  aroundTheCorner('AROUND_THE_CORNER'),

  /// Close to the landmark's structure but further away from its street entrances.
  @JsonValue('BEHIND')
  behind('BEHIND'),
  ;

  final String name;
  const SpatialRelationship(this.name);

  static SpatialRelationship? valueOf(String name) => SpatialRelationship.values
      .firstWhereOrNull((value) => value.name == name);
}
