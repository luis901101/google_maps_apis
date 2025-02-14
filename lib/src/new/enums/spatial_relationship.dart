import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Defines the spatial relationship between the target location and the landmark.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#spatialrelationship
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum SpatialRelationship {
  /// This is the default relationship when nothing more specific below applies.
  near('NEAR'),

  /// The landmark has a spatial geometry and the target is within its bounds.
  within('WITHIN'),

  /// The target is directly adjacent to the landmark.
  beside('BESIDE'),

  /// The target is directly opposite the landmark on the other side of the road.
  acrossTheRoad('ACROSS_THE_ROAD'),

  /// On the same route as the landmark but not besides or across.
  downTheRoad('DOWN_THE_ROAD'),

  /// Not on the same route as the landmark but a single turn away.
  aroundTheCorner('AROUND_THE_CORNER'),

  /// Close to the landmark's structure but further away from its street entrances.
  behind('BEHIND'),
  ;

  final String name;
  const SpatialRelationship(this.name);

  static SpatialRelationship? valueOf(String name) => SpatialRelationship.values
      .firstWhereOrNull((value) => value.name == name);
}
