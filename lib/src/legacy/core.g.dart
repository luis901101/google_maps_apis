// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Geometry _$GeometryFromJson(Map<String, dynamic> json) => Geometry(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      locationType: json['location_type'] as String?,
      viewport: json['viewport'] == null
          ? null
          : Bounds.fromJson(json['viewport'] as Map<String, dynamic>),
      bounds: json['bounds'] == null
          ? null
          : Bounds.fromJson(json['bounds'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'location': instance.location,
      if (instance.locationType case final value?) 'location_type': value,
      if (instance.viewport case final value?) 'viewport': value,
      if (instance.bounds case final value?) 'bounds': value,
    };

CircleLocation _$CircleLocationFromJson(Map<String, dynamic> json) =>
    CircleLocation(
      center: Location.fromJson(json['center'] as Map<String, dynamic>),
      radius: (json['radius'] as num).toInt(),
    );

Map<String, dynamic> _$CircleLocationToJson(CircleLocation instance) =>
    <String, dynamic>{
      'center': instance.center,
      'radius': instance.radius,
    };

RectangleLocation _$RectangleLocationFromJson(Map<String, dynamic> json) =>
    RectangleLocation(
      northEast: Location.fromJson(json['north_east'] as Map<String, dynamic>),
      southWest: Location.fromJson(json['south_west'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RectangleLocationToJson(RectangleLocation instance) =>
    <String, dynamic>{
      'north_east': instance.northEast,
      'south_west': instance.southWest,
    };

Bounds _$BoundsFromJson(Map<String, dynamic> json) => Bounds(
      northeast: Location.fromJson(json['northeast'] as Map<String, dynamic>),
      southwest: Location.fromJson(json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoundsToJson(Bounds instance) => <String, dynamic>{
      'northeast': instance.northeast,
      'southwest': instance.southwest,
    };

AddressComponent _$AddressComponentFromJson(Map<String, dynamic> json) =>
    AddressComponent(
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      longName: json['long_name'] as String?,
      shortName: json['short_name'] as String?,
    );

Map<String, dynamic> _$AddressComponentToJson(AddressComponent instance) =>
    <String, dynamic>{
      if (instance.longName case final value?) 'long_name': value,
      if (instance.shortName case final value?) 'short_name': value,
      if (instance.types case final value?) 'types': value,
    };
