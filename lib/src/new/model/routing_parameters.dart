import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/lat_lng.dart';
import 'package:google_maps_apis/src/new/model/route_modifiers.dart';
import 'package:google_maps_apis/src/new/enums/routing_preference.dart';
import 'package:google_maps_apis/src/new/enums/travel_mode.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'routing_parameters.g.dart';

/// Information about the accessibility options a place offers.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#RoutingParameters
@JsonSerializable()
@CopyWith()
class RoutingParameters extends Jsonable<RoutingParameters> {
  /// Optional. An explicit routing origin that overrides the origin defined in
  /// the polyline. By default, the polyline origin is used.
  final LatLng? origin;

  /// Optional. The travel mode.
  final TravelMode? travelMode;

  /// Optional. The route modifiers.
  final RouteModifiers? routeModifiers;

  /// Optional. Specifies how to compute the routing summaries. The server
  /// attempts to use the selected routing preference to compute the route. The
  /// traffic aware routing preference is only available for the DRIVE or
  /// TWO_WHEELER travelMode.
  final RoutingPreference? routingPreference;

  RoutingParameters({
    this.origin,
    this.travelMode,
    this.routeModifiers,
    this.routingPreference,
  });

  factory RoutingParameters.fromJson(Map<String, dynamic> json) {
    return _$RoutingParametersFromJson(json);
  }

  @override
  RoutingParameters? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? RoutingParameters.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$RoutingParametersToJson(this);
  }
}
