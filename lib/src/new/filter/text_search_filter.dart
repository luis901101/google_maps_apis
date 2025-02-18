import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/enums/place_type.dart';
import 'package:google_maps_apis/src/new/enums/price_level.dart';
import 'package:google_maps_apis/src/new/enums/rank_preference_type.dart';
import 'package:google_maps_apis/src/new/filter/base_filter.dart';
import 'package:google_maps_apis/src/new/model/ev_options.dart';
import 'package:google_maps_apis/src/new/model/location_area.dart';
import 'package:json_annotation/json_annotation.dart';

part 'text_search_filter.g.dart';

/// Structure of the body of Text Search requests.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/searchText#request-body
@JsonSerializable()
@CopyWith()
class TextSearchFilter extends BaseFilter<TextSearchFilter> {
  /// The text string on which to search, for example: "restaurant", "123 Main Street",
  /// or "best place to visit in San Francisco". The API returns candidate matches
  /// based on this string and orders the results based on their perceived relevance.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#textquery
  final String textQuery;

  /// Restricts the results to places matching the specified type defined by Table A.
  /// Only one type may be specified. For example:
  ///
  /// - [includedType]: [PlaceType.bar]
  /// - [includedType]: [PlaceType.pharmacy]
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#includedtype
  final PlaceType? includedType;

  /// If set to [true], the response includes businesses that visit or deliver to
  /// customers directly, but don't have a physical business location. If set to [false],
  /// the API returns only businesses with a physical business location.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#includepureserviceareabusinesses
  final bool? includePureServiceAreaBusinesses;

  /// Specifies an area to search. This location serves as a bias which means
  /// results around the specified location can be returned, including results
  /// outside the specified area.
  ///
  /// You can specify [locationRestriction] or [locationBias], but not both.
  /// Think of [locationRestriction] as specifying the region which the results
  /// must be within, and [locationBias] as specifying the region that the results
  /// will likely be inside or near but can be outside of the area.
  ///
  /// ⭐️ Note: If you omit both [locationBias] and [locationRestriction], then the
  /// API uses IP biasing by default. With IP biasing, the API uses the device's IP
  /// address to bias the results.
  ///
  /// ⭐️ Note: The [locationBias] parameter can be overridden if the [textQuery]
  /// contains an explicit location such as [Market in Barcelona]. In this case,
  /// [locationBias] is ignored.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#location-bias
  final LocationMultiArea? locationBias;

  /// Specifies an area to search. Results outside the specified area are not returned.
  ///
  /// Specify the region as a rectangular Viewport. For an example of defining the
  /// Viewport, see the description of [locationBias].
  ///
  /// You can specify [locationRestriction] or [locationBias], but not both.
  /// Think of [locationRestriction] as specifying the region which the results
  /// must be within, and [locationBias] as specifying the region that the results
  /// will likely be inside or near but can be outside of the area.
  ///
  /// ⭐️ Note: If you omit both [locationBias] and [locationRestriction], then
  /// the API uses IP biasing by default. With IP biasing, the API uses the IP
  /// address of the device to bias the results.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#location-restriction
  final LocationMultiArea? locationRestriction;

  /// Specifies parameters for identifying available electric vehicle (EV) charging connectors and charging rates.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#evoptions
  final EvOptions? evOptions;

  /// Restricts results to only those whose average user rating is greater than
  /// or equal to this limit. Values must be between 0.0 and 5.0 (inclusive)
  /// in increments of 0.5. For example: 0, 0.5, 1.0, ... , 5.0 inclusive.
  /// Values are rounded up to the nearest 0.5. For example, a value of 0.6
  /// eliminates all results with a rating less than 1.0.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#minrating
  final double? minRating;

  /// If [true], return only those places that are open for business at the time
  /// the query is sent. If [false], return all businesses regardless of open status.
  /// Places that don't specify opening hours in the Google Places database are
  /// returned if you set this parameter to [false].
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#opennow
  final bool? openNow;

  /// Specifies the number of results (between 1 and 20) to display per page.
  /// For example, setting a [pageSize] value of 5 will return up to 5 results on
  /// the first page. If there are more results that can be returned from the query,
  /// the response includes a [nextPageToken] that you can pass into a subsequent
  /// request to access the next page.
  ///
  /// ⭐️ Note: If [pageSize] is 0 or unspecified, the API will return 20 results
  /// per page by default. If [pageSize] is greater than 20, the API will return
  /// no more than 20 results per page.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#pagesize
  final int? pageSize;

  /// Specifies the [nextPageToken] from the response body of the previous page.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#pagetoken
  final String? pageToken;

  /// Restrict the search to places that are marked at certain price levels.
  /// The default is to select all price levels.
  ///
  /// Specify an array of one or more of values defined by [PriceLevel].
  ///
  /// ⭐️ Note: [PriceLevel.free] is not allowed in a request. It is only used to
  /// populate the response.
  ///
  /// For example: [priceLevels]: [PriceLevel.inexpensive, PriceLevel.moderate]
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#pricelevels
  final List<PriceLevel>? priceLevels;

  /// Specifies how the results are ranked in the response based on the type of query:
  ///
  /// - For a categorical query such as "Restaurants in New York City",
  ///   [RankPreferenceType.relevance] (rank results by search relevance) is the default.
  ///   You can set [rankPreference] to [RankPreferenceType.relevance] or
  ///   [RankPreferenceType.distance] (rank results by distance).
  /// - For a non-categorical query such as "Mountain View, CA", we recommend that
  ///  you leave [rankPreference] unset.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#rankpreference
  final RankPreferenceType? rankPreference;

  /// Used with the [includedType] parameter. When set to [true], only places that
  /// match the specified types specified by [includeType] are returned. When false,
  /// the default, the response can contain places that don't match the specified types.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#stricttypefiltering
  final bool? strictTypeFiltering;

  TextSearchFilter({
    super.languageCode,
    super.regionCode,
    required this.textQuery,
    this.includedType,
    this.includePureServiceAreaBusinesses,
    this.locationBias,
    this.locationRestriction,
    this.evOptions,
    this.minRating,
    this.openNow,
    this.pageSize,
    this.pageToken,
    List<PriceLevel>? priceLevels,
    RankPreferenceType? rankPreference,
    this.strictTypeFiltering,
  })  : priceLevels = priceLevels
            ?.where((element) => element != PriceLevel.free)
            .toList(),
        rankPreference = RankPreferenceType.validForTextSearch(rankPreference);

  factory TextSearchFilter.fromJson(Map<String, dynamic> json) {
    return _$TextSearchFilterFromJson(json);
  }

  @override
  TextSearchFilter? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? TextSearchFilter.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$TextSearchFilterToJson(this);
  }
}
