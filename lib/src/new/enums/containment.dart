import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Defines the spatial relationship between the target location and the area.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#containment
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum Containment {
  /// The containment is unspecified.
  containmentUnspecified('CONTAINMENT_UNSPECIFIED'),

  /// The target location is within the area region, close to the center.
  within('WITHIN'),

  /// The target location is within the area region, close to the edge.
  outskirts('OUTSKIRTS'),

  /// The target location is outside the area region, but close by.
  near('NEAR'),
  ;

  final String name;
  const Containment(this.name);

  static Containment? valueOf(String name) =>
      Containment.values.firstWhereOrNull((value) => value.name == name);
}
