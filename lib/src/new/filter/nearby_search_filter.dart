import 'package:google_maps_apis/src/new/model/routing_parameters.dart';
import 'package:google_maps_apis/src/new/enums/place_type.dart';
import 'package:google_maps_apis/src/new/enums/rank_preference_type.dart';
import 'package:google_maps_apis/src/new/filter/base_filter.dart';
import 'package:google_maps_apis/src/new/model/location_area.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'nearby_search_filter.g.dart';

/// Structure of the body of Nearby Search requests:
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/searchNearby#request-body
@JsonSerializable()
@CopyWith()
class NearbySearchFilter extends BaseFilter<NearbySearchFilter> {
  /// Included Place type (eg, "restaurant" or "gas_station")
  /// from https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// Up to 50 types from Table A may be specified.
  ///
  /// If there are any conflicting types, i.e. a type appears in both [includedTypes]
  /// and [excludedTypes], an [INVALID_ARGUMENT] error is returned.
  ///
  /// If a Place type is specified with multiple type restrictions, only places
  /// that satisfy all of the restrictions are returned. For example, if we have
  /// {includedTypes = ["restaurant"], excludedPrimaryTypes = ["restaurant"]},
  /// the returned places provide "restaurant" related services but do not operate
  /// primarily as "restaurants".
  ///
  /// For an easy way to indicate a list of compatible types,
  /// use the [PlaceType] enum and the groups available
  /// for instance: [PlaceType.foodAndDrinkTypes]
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#includedtypes
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? includedTypes;

  /// Excluded Place type (eg, "restaurant" or "gas_station")
  /// from https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// Up to 50 types from Table A may be specified.
  ///
  /// If the client provides both includedTypes (e.g. restaurant) and [excludedTypes]
  /// (e.g. cafe), then the response should include places that are restaurant but
  /// not cafe. The response includes places that match at least one of the
  /// [includedTypes] and none of the [excludedTypes].
  ///
  /// If there are any conflicting types, i.e. a type appears in both [includedTypes]
  /// and [excludedTypes], an [INVALID_ARGUMENT] error is returned.
  ///
  /// If a Place type is specified with multiple type restrictions, only places
  /// that satisfy all of the restrictions are returned. For example, if we have
  /// {includedTypes = ["restaurant"], excludedPrimaryTypes = ["restaurant"]},
  /// the returned places provide "restaurant" related services but do not operate
  /// primarily as "restaurants".
  ///
  /// For an easy way to indicate a list of compatible types,
  /// use the [PlaceType] enum and the groups available
  /// for instance: [PlaceType.foodAndDrinkTypes]
  ///
  /// /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#excludedtypes
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? excludedTypes;

  /// Included primary Place type (e.g. "restaurant" or "gas_station")
  /// from https://developers.google.com/maps/documentation/places/web-service/place-types.
  /// A place can only have a single primary type from the supported types table associated with it.
  ///
  /// Up to 50 types from Table A may be specified.
  ///
  /// If there are any conflicting primary types, i.e. a type appears in both
  /// [includedPrimaryTypes] and [excludedPrimaryTypes], an [INVALID_ARGUMENT]
  /// error is returned.
  ///
  /// If a Place type is specified with multiple type restrictions, only places
  /// that satisfy all of the restrictions are returned. For example, if we have
  /// {includedTypes = ["restaurant"], excludedPrimaryTypes = ["restaurant"]},
  /// the returned places provide "restaurant" related services but do not operate
  /// primarily as "restaurants".
  ///
  /// For an easy way to indicate a list of compatible types,
  /// use the [PlaceType] enum and the groups available
  /// for instance: [PlaceType.foodAndDrinkTypes]
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#includedprimarytypes
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? includedPrimaryTypes;

  /// Excluded primary Place type (e.g. "restaurant" or "gas_station")
  /// from https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// Up to 50 types from Table A may be specified.
  ///
  /// If there are any conflicting primary types, i.e. a type appears in both
  /// [includedPrimaryTypes] and [excludedPrimaryTypes], an [INVALID_ARGUMENT]
  /// error is returned.
  ///
  /// If a Place type is specified with multiple type restrictions, only places
  /// that satisfy all of the restrictions are returned. For example, if we have
  /// {includedTypes = ["restaurant"], excludedPrimaryTypes = ["restaurant"]},
  /// the returned places provide "restaurant" related services but do not operate
  /// primarily as "restaurants".
  ///
  /// For an easy way to indicate a list of compatible types,
  /// use the [PlaceType] enum and the groups available
  /// for instance: [PlaceType.foodAndDrinkTypes]
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#excludedprimarytypes
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? excludedPrimaryTypes;

  /// Maximum number of results to return. It must be between 1 and 20 (default),
  /// inclusively. If the number is unset, it falls back to the upper limit.
  /// If the number is set to negative or exceeds the upper limit, an [INVALID_ARGUMENT]
  /// error is returned.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#maxresultcount
  final int? maxResultCount;

  /// The region to search specified as a circle, defined by center point and
  /// radius in meters. The radius must be between 1.0 and 50000.0, inclusive.
  /// The default radius is 500.0.
  /// You must set it in your request to a value greater than 0.0.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#locationrestriction
  final LocationRestrictionCircle locationRestriction;

  /// The type of ranking to use. If this parameter is omitted,
  /// results are ranked by [RankPreferenceType.popularity].
  ///
  /// May be one of the following:
  /// - [RankPreferenceType.popularity] (default) Sorts results based on their popularity.
  /// - [RankPreferenceType.distance] Sorts results in ascending order by their distance from the specified location.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#rankpreference
  final RankPreferenceType? rankPreference;

  /// Parameters that affect the routing to the search results.
  final RoutingParameters? routingParameters;

  NearbySearchFilter({
    super.languageCode,
    super.regionCode,
    this.includedTypes,
    this.excludedTypes,
    this.includedPrimaryTypes,
    this.excludedPrimaryTypes,
    int? maxResultCount,
    required this.locationRestriction,
    RankPreferenceType? rankPreference,
    this.routingParameters,
  }) : maxResultCount = maxResultCount?.clamp(1, 20),
       rankPreference = RankPreferenceType.validForNearbySearch(rankPreference);

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
