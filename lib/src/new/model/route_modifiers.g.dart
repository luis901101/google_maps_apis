// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_modifiers.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RouteModifiersCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// RouteModifiers(...).copyWith(id: 12, name: "My name")
  /// ````
  RouteModifiers call({
    bool? avoidTolls,
    bool? avoidHighways,
    bool? avoidFerries,
    bool? avoidIndoor,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRouteModifiers.copyWith(...)`.
class _$RouteModifiersCWProxyImpl implements _$RouteModifiersCWProxy {
  const _$RouteModifiersCWProxyImpl(this._value);

  final RouteModifiers _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// RouteModifiers(...).copyWith(id: 12, name: "My name")
  /// ````
  RouteModifiers call({
    Object? avoidTolls = const $CopyWithPlaceholder(),
    Object? avoidHighways = const $CopyWithPlaceholder(),
    Object? avoidFerries = const $CopyWithPlaceholder(),
    Object? avoidIndoor = const $CopyWithPlaceholder(),
  }) {
    return RouteModifiers(
      avoidTolls: avoidTolls == const $CopyWithPlaceholder()
          ? _value.avoidTolls
          // ignore: cast_nullable_to_non_nullable
          : avoidTolls as bool?,
      avoidHighways: avoidHighways == const $CopyWithPlaceholder()
          ? _value.avoidHighways
          // ignore: cast_nullable_to_non_nullable
          : avoidHighways as bool?,
      avoidFerries: avoidFerries == const $CopyWithPlaceholder()
          ? _value.avoidFerries
          // ignore: cast_nullable_to_non_nullable
          : avoidFerries as bool?,
      avoidIndoor: avoidIndoor == const $CopyWithPlaceholder()
          ? _value.avoidIndoor
          // ignore: cast_nullable_to_non_nullable
          : avoidIndoor as bool?,
    );
  }
}

extension $RouteModifiersCopyWith on RouteModifiers {
  /// Returns a callable class that can be used as follows: `instanceOfRouteModifiers.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$RouteModifiersCWProxy get copyWith => _$RouteModifiersCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteModifiers _$RouteModifiersFromJson(Map<String, dynamic> json) =>
    RouteModifiers(
      avoidTolls: json['avoidTolls'] as bool?,
      avoidHighways: json['avoidHighways'] as bool?,
      avoidFerries: json['avoidFerries'] as bool?,
      avoidIndoor: json['avoidIndoor'] as bool?,
    );

Map<String, dynamic> _$RouteModifiersToJson(RouteModifiers instance) =>
    <String, dynamic>{
      if (instance.avoidTolls case final value?) 'avoidTolls': value,
      if (instance.avoidHighways case final value?) 'avoidHighways': value,
      if (instance.avoidFerries case final value?) 'avoidFerries': value,
      if (instance.avoidIndoor case final value?) 'avoidIndoor': value,
    };
