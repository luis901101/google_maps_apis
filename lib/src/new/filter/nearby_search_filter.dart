import 'package:google_maps_apis/src/new/enums/place_type.dart';
import 'package:google_maps_apis/src/new/enums/rank_preference_type.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'nearby_search_filter.g.dart';

@JsonSerializable()
@CopyWith()
class NearbySearchFilter extends Jsonable<NearbySearchFilter> {
  /// The region to search specified as a circle, defined by center point and
  /// radius in meters. The radius must be between 1.0 and 50000.0, inclusive.
  /// The default radius is 500.0.
  /// You must set it in your request to a value greater than 0.0.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#locationrestriction
  final LocationRestriction locationRestriction;

  /// A list of the place types from Table A to search for.
  /// If this parameter is omitted, places of all types are returned.
  ///
  /// For an easy way to indicate a list of compatible types,
  /// use the [PlaceType] enum and the groups available
  /// for instance: [PlaceType.foodAndDrinkTypes]
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#includedtypes
  final List<PlaceType>? includedTypes;

  /// A list of place types from Table A to exclude from a search.
  /// If you specify both the [includedTypes] ( such as "school") and the
  /// [excludedTypes] (such as "primary_school") in the request, then the response
  /// includes places that are categorized as "school" but not as "primary_school".
  /// The response includes places that match at least one of the [includedTypes] and
  /// none of the [excludedTypes].
  ///
  /// If there are any conflicting types, such as a type appearing in both
  /// [includedTypes] and [excludedTypes], an [INVALID_REQUEST] error is returned.
  ///
  /// For an easy way to indicate a list of compatible types,
  /// use the [PlaceType] enum and the groups available
  /// for instance: [PlaceType.foodAndDrinkTypes]
  ///
  /// /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#excludedtypes
  final List<PlaceType>? excludedTypes;

  /// A list of primary place types from Table A to include in a search.
  ///
  /// For an easy way to indicate a list of compatible types,
  /// use the [PlaceType] enum and the groups available
  /// for instance: [PlaceType.foodAndDrinkTypes]
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#includedprimarytypes
  final List<PlaceType>? includedPrimaryTypes;

  /// A list of primary place types from Table A to exclude from a search.
  ///
  /// If there are any conflicting primary types, such as a type appearing in
  /// both [includedPrimaryTypes] and [excludedPrimaryTypes], an [INVALID_ARGUMENT]
  /// error is returned.
  ///
  /// For an easy way to indicate a list of compatible types,
  /// use the [PlaceType] enum and the groups available
  /// for instance: [PlaceType.foodAndDrinkTypes]
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#excludedprimarytypes
  final List<PlaceType>? excludedPrimaryTypes;

  /// The language in which to return results.
  ///
  /// - See the list of supported languages. Google often updates the supported languages,
  ///   so this list may not be exhaustive: https://developers.google.com/maps/faq#languagesupport
  /// - If [languageCode] is not supplied, the API defaults to [en].
  ///   If you specify an invalid language code, the API returns an [INVALID_ARGUMENT] error.
  /// - The API does its best to provide a street address that is readable for both the user and locals. To achieve that goal, it returns street addresses in the local language, transliterated to a script readable by the user if necessary, observing the preferred language. All other addresses are returned in the preferred language. Address components are all returned in the same language, which is chosen from the first component.
  /// - If a name is not available in the preferred language, the API uses the closest match.
  /// - The preferred language has a small influence on the set of results that the API chooses to return, and the order in which they are returned. The geocoder interprets abbreviations differently depending on language, such as the abbreviations for street types, or synonyms that may be valid in one language but not in another.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#languagecode
  final String? languageCode;

  /// Specifies the maximum number of place results to return. Must be between 1 and 20 (default) inclusive.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#maxresultcount
  final int? maxResultCount;

  /// The type of ranking to use. If this parameter is omitted, results are ranked by [popularity].
  /// May be one of the following:
  /// - [POPULARITY] (default) Sorts results based on their popularity.
  /// - [DISTANCE] Sorts results in ascending order by their distance from the specified location.
  ///
  /// For an easy way to indicate the [rankPreference] use [RankPreferenceType] enum
  /// like [RankPreferenceType.popularity.name] or [RankPreferenceType.distance.name].
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#rankpreference
  final RankPreferenceType? rankPreference;

  /// The region code used to format the response, specified as a two-character CLDR code value.
  /// There is no default value.
  ///
  /// If the country name of the formattedAddress field in the response matches the regionCode,
  /// the country code is omitted from formattedAddress. This parameter has no effect
  /// on adrFormatAddress, which always includes the country name, or on shortFormattedAddress,
  /// which never includes it.
  ///
  /// Most CLDR codes are identical to ISO 3166-1 codes, with some notable exceptions.
  /// For example, the United Kingdom's ccTLD is "uk" (.co.uk) while its ISO 3166-1 code is "gb"
  /// (technically for the entity of "The United Kingdom of Great Britain and Northern Ireland").
  /// The parameter can affect results based on applicable law.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#regioncode
  final String? regionCode;

  NearbySearchFilter({
    required this.locationRestriction,
    this.includedTypes,
    this.excludedTypes,
    this.includedPrimaryTypes,
    this.excludedPrimaryTypes,
    this.languageCode,
    int? maxResultCount,
    this.rankPreference,
    this.regionCode,
  }) : maxResultCount = maxResultCount?.clamp(1, 20);

  factory NearbySearchFilter.fromJson(Map<String, dynamic> json) {
    return _$NearbySearchFilterFromJson(json);
  }

  @override
  NearbySearchFilter? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? NearbySearchFilter.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$NearbySearchFilterToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class LocationRestriction extends Jsonable<LocationRestriction> {
  final Circle circle;

  LocationRestriction({
    required this.circle,
  });

  factory LocationRestriction.fromJson(Map<String, dynamic> json) {
    return _$LocationRestrictionFromJson(json);
  }

  @override
  LocationRestriction? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? LocationRestriction.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LocationRestrictionToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Circle extends Jsonable<Circle> {
  final Coordinates center;

  /// The radius in meters must be between 1.0 and 50000.0, inclusive.
  /// The default radius is 500.0.
  /// You must set it in your request to a value greater than 0.0.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#locationrestriction
  final double radius;
  static const double defaultRadius = 500.0;

  Circle({
    required this.center,
    double? radius,
  }) : radius = radius?.clamp(1, 50000) ?? defaultRadius;

  factory Circle.fromJson(Map<String, dynamic> json) {
    return _$CircleFromJson(json);
  }

  @override
  Circle? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Circle.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$CircleToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Coordinates extends Jsonable<Coordinates> {
  final double latitude;
  final double longitude;

  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return _$CoordinatesFromJson(json);
  }

  @override
  Coordinates? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Coordinates.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$CoordinatesToJson(this);
  }
}
