// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodingResponse _$GeocodingResponseFromJson(Map<String, dynamic> json) =>
    GeocodingResponse(
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => GeocodingResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeocodingResponseToJson(GeocodingResponse instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      if (instance.errorMessage case final value?) 'error_message': value,
      if (instance.results case final value?) 'results': value,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.ok: 'OK',
  ResponseStatus.zeroResults: 'ZERO_RESULTS',
  ResponseStatus.overQueryLimit: 'OVER_QUERY_LIMIT',
  ResponseStatus.requestDenied: 'REQUEST_DENIED',
  ResponseStatus.invalidRequest: 'INVALID_REQUEST',
  ResponseStatus.unknownError: 'UNKNOWN_ERROR',
  ResponseStatus.notFound: 'NOT_FOUND',
  ResponseStatus.maxWaypointsExceeded: 'MAX_WAYPOINTS_EXCEEDED',
  ResponseStatus.maxRouteLengthExceeded: 'MAX_ROUTE_LENGTH_EXCEEDED',
};

GeocodingResult _$GeocodingResultFromJson(Map<String, dynamic> json) =>
    GeocodingResult(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      placeId: json['place_id'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      addressComponents: (json['address_components'] as List<dynamic>?)
          ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      postcodeLocalities: (json['postcode_localities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      partialMatch: json['partial_match'] as bool?,
      formattedAddress: json['formatted_address'] as String?,
    );

Map<String, dynamic> _$GeocodingResultToJson(GeocodingResult instance) =>
    <String, dynamic>{
      if (instance.types case final value?) 'types': value,
      if (instance.formattedAddress case final value?)
        'formatted_address': value,
      if (instance.addressComponents case final value?)
        'address_components': value,
      if (instance.postcodeLocalities case final value?)
        'postcode_localities': value,
      if (instance.geometry case final value?) 'geometry': value,
      if (instance.partialMatch case final value?) 'partial_match': value,
      if (instance.placeId case final value?) 'place_id': value,
    };

StreetAddress _$StreetAddressFromJson(Map<String, dynamic> json) =>
    StreetAddress(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      addressLine: json['address_line'] as String?,
      countryName: json['country_name'] as String?,
      countryCode: json['country_code'] as String?,
      featureName: json['feature_name'] as String?,
      postalCode: json['postal_code'] as String?,
      adminArea: json['admin_area'] as String?,
      subAdminArea: json['sub_admin_area'] as String?,
      locality: json['locality'] as String?,
      subLocality: json['sub_locality'] as String?,
      thoroughfare: json['thoroughfare'] as String?,
      subThoroughfare: json['sub_thoroughfare'] as String?,
    );

Map<String, dynamic> _$StreetAddressToJson(StreetAddress instance) =>
    <String, dynamic>{
      if (instance.geometry case final value?) 'geometry': value,
      if (instance.addressLine case final value?) 'address_line': value,
      if (instance.countryName case final value?) 'country_name': value,
      if (instance.countryCode case final value?) 'country_code': value,
      if (instance.featureName case final value?) 'feature_name': value,
      if (instance.postalCode case final value?) 'postal_code': value,
      if (instance.adminArea case final value?) 'admin_area': value,
      if (instance.subAdminArea case final value?) 'sub_admin_area': value,
      if (instance.locality case final value?) 'locality': value,
      if (instance.subLocality case final value?) 'sub_locality': value,
      if (instance.thoroughfare case final value?) 'thoroughfare': value,
      if (instance.subThoroughfare case final value?) 'sub_thoroughfare': value,
    };
