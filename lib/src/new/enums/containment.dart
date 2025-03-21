import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Defines the spatial relationship between the target location and the area.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#containment
enum Containment {
  /// The containment is unspecified.
  @JsonValue('CONTAINMENT_UNSPECIFIED')
  containmentUnspecified('CONTAINMENT_UNSPECIFIED'),

  /// The target location is within the area region, close to the center.
  @JsonValue('WITHIN')
  within('WITHIN'),

  /// The target location is within the area region, close to the edge.
  @JsonValue('OUTSKIRTS')
  outskirts('OUTSKIRTS'),

  /// The target location is outside the area region, but close by.
  @JsonValue('NEAR')
  near('NEAR'),
  ;

  final String name;
  const Containment(this.name);

  static Containment? valueOf(String name) =>
      Containment.values.firstWhereOrNull((value) => value.name == name);
}
