// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_parameters.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RoutingParametersCWProxy {
  RoutingParameters origin(LatLng? origin);

  RoutingParameters travelMode(TravelMode? travelMode);

  RoutingParameters routeModifiers(RouteModifiers? routeModifiers);

  RoutingParameters routingPreference(RoutingPreference? routingPreference);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RoutingParameters(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RoutingParameters(...).copyWith(id: 12, name: "My name")
  /// ```
  RoutingParameters call({
    LatLng? origin,
    TravelMode? travelMode,
    RouteModifiers? routeModifiers,
    RoutingPreference? routingPreference,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRoutingParameters.copyWith(...)` or call `instanceOfRoutingParameters.copyWith.fieldName(value)` for a single field.
class _$RoutingParametersCWProxyImpl implements _$RoutingParametersCWProxy {
  const _$RoutingParametersCWProxyImpl(this._value);

  final RoutingParameters _value;

  @override
  RoutingParameters origin(LatLng? origin) => call(origin: origin);

  @override
  RoutingParameters travelMode(TravelMode? travelMode) =>
      call(travelMode: travelMode);

  @override
  RoutingParameters routeModifiers(RouteModifiers? routeModifiers) =>
      call(routeModifiers: routeModifiers);

  @override
  RoutingParameters routingPreference(RoutingPreference? routingPreference) =>
      call(routingPreference: routingPreference);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RoutingParameters(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RoutingParameters(...).copyWith(id: 12, name: "My name")
  /// ```
  RoutingParameters call({
    Object? origin = const $CopyWithPlaceholder(),
    Object? travelMode = const $CopyWithPlaceholder(),
    Object? routeModifiers = const $CopyWithPlaceholder(),
    Object? routingPreference = const $CopyWithPlaceholder(),
  }) {
    return RoutingParameters(
      origin: origin == const $CopyWithPlaceholder()
          ? _value.origin
          // ignore: cast_nullable_to_non_nullable
          : origin as LatLng?,
      travelMode: travelMode == const $CopyWithPlaceholder()
          ? _value.travelMode
          // ignore: cast_nullable_to_non_nullable
          : travelMode as TravelMode?,
      routeModifiers: routeModifiers == const $CopyWithPlaceholder()
          ? _value.routeModifiers
          // ignore: cast_nullable_to_non_nullable
          : routeModifiers as RouteModifiers?,
      routingPreference: routingPreference == const $CopyWithPlaceholder()
          ? _value.routingPreference
          // ignore: cast_nullable_to_non_nullable
          : routingPreference as RoutingPreference?,
    );
  }
}

extension $RoutingParametersCopyWith on RoutingParameters {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRoutingParameters.copyWith(...)` or `instanceOfRoutingParameters.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RoutingParametersCWProxy get copyWith =>
      _$RoutingParametersCWProxyImpl(this);
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
