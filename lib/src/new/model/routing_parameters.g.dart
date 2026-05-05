// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_parameters.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [RoutingParameters] is to generate the code for a copyWith(...) function.
extension $RoutingParametersCopyWithExtension on RoutingParameters {
  RoutingParameters copyWith({
    LatLng? origin,
    TravelMode? travelMode,
    RouteModifiers? routeModifiers,
    RoutingPreference? routingPreference,
  }) {
    return RoutingParameters(
      origin: origin ?? this.origin,
      travelMode: travelMode ?? this.travelMode,
      routeModifiers: routeModifiers ?? this.routeModifiers,
      routingPreference: routingPreference ?? this.routingPreference,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoutingParameters _$RoutingParametersFromJson(Map<String, dynamic> json) =>
    RoutingParameters(
      origin: json['origin'] == null
          ? null
          : LatLng.fromJson(json['origin'] as Map<String, dynamic>),
      travelMode: $enumDecodeNullable(_$TravelModeEnumMap, json['travelMode']),
      routeModifiers: json['routeModifiers'] == null
          ? null
          : RouteModifiers.fromJson(
              json['routeModifiers'] as Map<String, dynamic>,
            ),
      routingPreference: $enumDecodeNullable(
        _$RoutingPreferenceEnumMap,
        json['routingPreference'],
      ),
    );

Map<String, dynamic> _$RoutingParametersToJson(
  RoutingParameters instance,
) => <String, dynamic>{
  'origin': ?instance.origin,
  'travelMode': ?_$TravelModeEnumMap[instance.travelMode],
  'routeModifiers': ?instance.routeModifiers,
  'routingPreference': ?_$RoutingPreferenceEnumMap[instance.routingPreference],
};

const _$TravelModeEnumMap = {
  TravelMode.travelModeUnspecified: 'TRAVEL_MODE_UNSPECIFIED',
  TravelMode.drive: 'DRIVE',
  TravelMode.bicycle: 'BICYCLE',
  TravelMode.walk: 'WALK',
  TravelMode.twoWheeler: 'TWO_WHEELER',
};

const _$RoutingPreferenceEnumMap = {
  RoutingPreference.routingPreferenceUnspecified:
      'ROUTING_PREFERENCE_UNSPECIFIED',
  RoutingPreference.trafficUnaware: 'TRAFFIC_UNAWARE',
  RoutingPreference.trafficAware: 'TRAFFIC_AWARE',
  RoutingPreference.trafficAwareOptimal: 'TRAFFIC_AWARE_OPTIMAL',
};
