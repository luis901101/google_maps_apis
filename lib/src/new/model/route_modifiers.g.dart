// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_modifiers.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [RouteModifiers] is to generate the code for a copyWith(...) function.
extension $RouteModifiersCopyWithExtension on RouteModifiers {
  RouteModifiers copyWith({
    bool? avoidTolls,
    bool? avoidHighways,
    bool? avoidFerries,
    bool? avoidIndoor,
  }) {
    return RouteModifiers(
      avoidTolls: avoidTolls ?? this.avoidTolls,
      avoidHighways: avoidHighways ?? this.avoidHighways,
      avoidFerries: avoidFerries ?? this.avoidFerries,
      avoidIndoor: avoidIndoor ?? this.avoidIndoor,
    );
  }
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
