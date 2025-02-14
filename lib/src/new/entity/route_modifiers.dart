import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_modifiers.g.dart';

/// Encapsulates a set of optional conditions to satisfy when calculating the routes.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/RoutingParameters#routemodifiers
@JsonSerializable()
@CopyWith()
class RouteModifiers extends Jsonable<RouteModifiers> {
  /// Optional. When set to true, avoids toll roads where reasonable, giving
  /// preference to routes not containing toll roads. Applies only to the DRIVE
  /// and TWO_WHEELER TravelMode.
  final bool? avoidTolls;

  /// Optional. When set to true, avoids highways where reasonable, giving
  /// preference to routes not containing highways. Applies only to the DRIVE
  /// and TWO_WHEELER TravelMode.
  final bool? avoidHighways;

  /// Optional. When set to true, avoids ferries where reasonable, giving
  /// preference to routes not containing ferries. Applies only to the DRIVE and
  /// TWO_WHEELER TravelMode.
  final bool? avoidFerries;

  /// Optional. When set to true, avoids navigating indoors where reasonable,
  /// giving preference to routes not containing indoor navigation. Applies only
  /// to the WALK TravelMode.
  final bool? avoidIndoor;

  RouteModifiers({
    this.avoidTolls,
    this.avoidHighways,
    this.avoidFerries,
    this.avoidIndoor,
  });

  factory RouteModifiers.fromJson(Map<String, dynamic> json) {
    return _$RouteModifiersFromJson(json);
  }

  @override
  RouteModifiers? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? RouteModifiers.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$RouteModifiersToJson(this);
  }
}
