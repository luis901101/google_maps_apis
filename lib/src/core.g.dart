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
      'location_type': instance.locationType,
      'viewport': instance.viewport,
      'bounds': instance.bounds,
    };

CircleLocation _$CircleLocationFromJson(Map<String, dynamic> json) =>
    CircleLocation(
      center: Location.fromJson(json['center'] as Map<String, dynamic>),
      radius: json['radius'] as int,
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
      'long_name': instance.longName,
      'short_name': instance.shortName,
      'types': instance.types,
    };
