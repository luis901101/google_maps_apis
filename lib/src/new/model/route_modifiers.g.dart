// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_modifiers.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RouteModifiersCWProxy {
  RouteModifiers avoidTolls(bool? avoidTolls);

  RouteModifiers avoidHighways(bool? avoidHighways);

  RouteModifiers avoidFerries(bool? avoidFerries);

  RouteModifiers avoidIndoor(bool? avoidIndoor);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RouteModifiers(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RouteModifiers(...).copyWith(id: 12, name: "My name")
  /// ```
  RouteModifiers call({
    bool? avoidTolls,
    bool? avoidHighways,
    bool? avoidFerries,
    bool? avoidIndoor,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRouteModifiers.copyWith(...)` or call `instanceOfRouteModifiers.copyWith.fieldName(value)` for a single field.
class _$RouteModifiersCWProxyImpl implements _$RouteModifiersCWProxy {
  const _$RouteModifiersCWProxyImpl(this._value);

  final RouteModifiers _value;

  @override
  RouteModifiers avoidTolls(bool? avoidTolls) => call(avoidTolls: avoidTolls);

  @override
  RouteModifiers avoidHighways(bool? avoidHighways) =>
      call(avoidHighways: avoidHighways);

  @override
  RouteModifiers avoidFerries(bool? avoidFerries) =>
      call(avoidFerries: avoidFerries);

  @override
  RouteModifiers avoidIndoor(bool? avoidIndoor) =>
      call(avoidIndoor: avoidIndoor);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RouteModifiers(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RouteModifiers(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRouteModifiers.copyWith(...)` or `instanceOfRouteModifiers.copyWith.fieldName(...)`.
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
      'avoidTolls': ?instance.avoidTolls,
      'avoidHighways': ?instance.avoidHighways,
      'avoidFerries': ?instance.avoidFerries,
      'avoidIndoor': ?instance.avoidIndoor,
    };
