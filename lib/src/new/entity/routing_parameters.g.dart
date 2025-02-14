// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_parameters.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RoutingParametersCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// RoutingParameters(...).copyWith(id: 12, name: "My name")
  /// ````
  RoutingParameters call({
    LatLng? origin,
    TravelMode? travelMode,
    RouteModifiers? routeModifiers,
    RoutingPreference? routingPreference,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRoutingParameters.copyWith(...)`.
class _$RoutingParametersCWProxyImpl implements _$RoutingParametersCWProxy {
  const _$RoutingParametersCWProxyImpl(this._value);

  final RoutingParameters _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// RoutingParameters(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfRoutingParameters.copyWith(...)`.
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
              json['routeModifiers'] as Map<String, dynamic>),
      routingPreference: $enumDecodeNullable(
          _$RoutingPreferenceEnumMap, json['routingPreference']),
    );

Map<String, dynamic> _$RoutingParametersToJson(RoutingParameters instance) =>
    <String, dynamic>{
      if (instance.origin case final value?) 'origin': value,
      if (_$TravelModeEnumMap[instance.travelMode] case final value?)
        'travelMode': value,
      if (instance.routeModifiers case final value?) 'routeModifiers': value,
      if (_$RoutingPreferenceEnumMap[instance.routingPreference]
          case final value?)
        'routingPreference': value,
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
