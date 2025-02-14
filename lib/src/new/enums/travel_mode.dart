import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Travel mode options. These options map to what Routes API offers.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/RoutingParameters#travelmode
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TravelMode {
  /// No travel mode specified. Defaults to DRIVE.
  travelModeUnspecified('TRAVEL_MODE_UNSPECIFIED'),

  /// Travel by passenger car.
  drive('DRIVE'),

  /// Travel by bicycle. Not supported with searchAlongRouteParameters.
  bicycle('BICYCLE'),

  /// Travel by walking. Not supported with searchAlongRouteParameters.
  walk('WALK'),

  /// Motorized two wheeled vehicles of all kinds such as scooters and motorcycles.
  /// Note that this is distinct from the BICYCLE travel mode which covers
  /// human-powered transport. Not supported with searchAlongRouteParameters.
  /// Only supported in those countries listed at Countries and regions supported
  /// for two-wheeled vehicles.
  twoWheeler('TWO_WHEELER'),
  ;

  final String name;
  const TravelMode(this.name);

  static TravelMode? valueOf(String name) =>
      TravelMode.values.firstWhereOrNull((value) => value.name == name);
}
