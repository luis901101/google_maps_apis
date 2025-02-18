import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/enums/place_type.dart';
import 'package:google_maps_apis/src/new/filter/base_session_filter.dart';
import 'package:google_maps_apis/src/new/model/lat_lng.dart';
import 'package:google_maps_apis/src/new/model/location_area.dart';
import 'package:json_annotation/json_annotation.dart';

part 'autocomplete_search_filter.g.dart';

/// Structure of the body of Autocomplete Search requests.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/autocomplete#request-body
@JsonSerializable()
@CopyWith()
class AutocompleteSearchFilter
    extends BaseSessionFilter<AutocompleteSearchFilter> {
  /// Required. The text string on which to search.
  final String? input;

  /// Optional. Bias results to a specified location.
  ///
  /// At most one of [locationBias] or [locationRestriction] should be set.
  /// If neither are set, the results will be biased by IP address, meaning the
  /// IP address will be mapped to an imprecise location and used as a biasing signal.
  final LocationBias? locationBias;

  /// Optional. Restrict results to a specified location.
  ///
  /// At most one of [locationBias] or [locationRestriction] should be set. If neither
  /// are set, the results will be biased by IP address, meaning the IP address
  /// will be mapped to an imprecise location and used as a biasing signal.
  final LocationRestriction? locationRestriction;

  /// Optional. Included primary Place type (for example, "restaurant" or "gas_station")
  /// in Place Types (https://developers.google.com/maps/documentation/places/web-service/place-types),
  /// or only [regions], or only [cities]. A Place is only returned if its primary
  /// type is included in this list. Up to 5 values can be specified. If no types
  /// are specified, all Place types are returned.
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? includedPrimaryTypes;

  /// Optional. Only include results in the specified regions, specified as up to
  /// 15 CLDR two-character region codes. An empty set will not restrict the results.
  /// If both [locationRestriction] and [includedRegionCodes] are set, the results will
  /// be located in the area of intersection.
  final List<String>? includedRegionCodes;

  /// Optional. The origin point from which to calculate geodesic distance to the
  /// destination (returned as [distanceMeters]). If this value is omitted, geodesic
  /// distance will not be returned.
  final LatLng? origin;

  /// Optional. A zero-based Unicode character offset of [input] indicating the
  /// cursor position in [input]. The cursor position may influence what predictions
  /// are returned.
  ///
  /// If empty, defaults to the length of [input].
  final int? inputOffset;

  /// Optional. If true, the response will include both Place and query predictions.
  /// Otherwise the response will only return Place predictions.
  ///
  /// Defaults to false.
  final bool? includeQueryPredictions;

  /// Optional. Include pure service area businesses if the field is set to true.
  /// Pure service area business is a business that visits or delivers to customers
  /// directly but does not serve customers at their business address. For example,
  /// businesses like cleaning services or plumbers. Those businesses do not have
  /// a physical address or location on Google Maps. Places will not return fields
  /// including [location], [plusCode], and other location related fields for these
  /// businesses.
  final bool? includePureServiceAreaBusinesses;

  AutocompleteSearchFilter({
    super.sessionToken,
    super.languageCode,
    super.regionCode,
    this.input,
    this.locationBias,
    this.locationRestriction,
    this.includedPrimaryTypes,
    this.includedRegionCodes,
    this.origin,
    this.inputOffset,
    this.includeQueryPredictions,
    this.includePureServiceAreaBusinesses,
  });

  factory AutocompleteSearchFilter.fromJson(Map<String, dynamic> json) {
    return _$AutocompleteSearchFilterFromJson(json);
  }

  @override
  AutocompleteSearchFilter? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AutocompleteSearchFilter.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AutocompleteSearchFilterToJson(this);
  }
}
