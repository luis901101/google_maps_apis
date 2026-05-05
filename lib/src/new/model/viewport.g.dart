// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewport.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Viewport] is to generate the code for a copyWith(...) function.
extension $ViewportCopyWithExtension on Viewport {
  Viewport copyWith({LatLng? low, LatLng? high}) {
    return Viewport(low: low ?? this.low, high: high ?? this.high);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Viewport _$ViewportFromJson(Map<String, dynamic> json) => Viewport(
  low: json['low'] == null
      ? null
      : LatLng.fromJson(json['low'] as Map<String, dynamic>),
  high: json['high'] == null
      ? null
      : LatLng.fromJson(json['high'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ViewportToJson(Viewport instance) => <String, dynamic>{
  'low': ?instance.low,
  'high': ?instance.high,
};
