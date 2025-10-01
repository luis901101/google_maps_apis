import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// A set of values that specify factors to take into consideration when calculating the route.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/RoutingParameters#routingpreference
enum RoutingPreference {
  /// No routing preference specified. Default to TRAFFIC_UNAWARE.
  @JsonValue('ROUTING_PREFERENCE_UNSPECIFIED')
  routingPreferenceUnspecified('ROUTING_PREFERENCE_UNSPECIFIED'),

  /// Computes routes without taking live traffic conditions into consideration.
  /// Suitable when traffic conditions don't matter or are not applicable.
  /// Using this value produces the lowest latency. Note: For TravelMode DRIVE
  /// and TWO_WHEELER, the route and duration chosen are based on road network
  /// and average time-independent traffic conditions, not current road conditions.
  /// Consequently, routes may include roads that are temporarily closed. Results
  /// for a given request may vary over time due to changes in the road network,
  /// updated average traffic conditions, and the distributed nature of the service.
  /// Results may also vary between nearly-equivalent routes at any time or frequency.
  @JsonValue('TRAFFIC_UNAWARE')
  trafficUnaware('TRAFFIC_UNAWARE'),

  /// Calculates routes taking live traffic conditions into consideration.
  /// In contrast to TRAFFIC_AWARE_OPTIMAL, some optimizations are applied to
  /// significantly reduce latency.
  @JsonValue('TRAFFIC_AWARE')
  trafficAware('TRAFFIC_AWARE'),

  /// Calculates the routes taking live traffic conditions into consideration,
  /// without applying most performance optimizations. Using this value produces
  /// the highest latency.
  @JsonValue('TRAFFIC_AWARE_OPTIMAL')
  trafficAwareOptimal('TRAFFIC_AWARE_OPTIMAL');

  final String name;
  const RoutingPreference(this.name);

  static RoutingPreference? valueOf(String name) =>
      RoutingPreference.values.firstWhereOrNull((value) => value.name == name);
}
