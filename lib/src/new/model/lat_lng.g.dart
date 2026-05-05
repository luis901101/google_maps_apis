// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_lng.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [LatLng] is to generate the code for a copyWith(...) function.
extension $LatLngCopyWithExtension on LatLng {
  LatLng copyWith({double? latitude, double? longitude}) {
    return LatLng(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLng _$LatLngFromJson(Map<String, dynamic> json) => LatLng(
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$LatLngToJson(LatLng instance) => <String, dynamic>{
  'latitude': ?instance.latitude,
  'longitude': ?instance.longitude,
};
