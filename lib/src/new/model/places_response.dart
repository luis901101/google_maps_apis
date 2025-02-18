import 'package:google_maps_apis/src/new/model/contextual_content.dart';
import 'package:google_maps_apis/src/new/model/place_details.dart';
import 'package:google_maps_apis/src/new/model/routing_summary.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'places_response.g.dart';

/// Response DTO for Search Nearby and Search Text.
@JsonSerializable()
@CopyWith()
class PlacesResponse extends Jsonable<PlacesResponse> {
  /// A list of places that meets user's requirements like places types,
  /// number of places and specific location restriction.
  final List<Place> places;

  /// A list of routing summaries where each entry associates to the corresponding
  /// place in the same index in the places field. If the routing summary is not
  /// available for one of the places, it will contain an empty entry. This list
  /// should have as many entries as the list of places if requested.
  List<RoutingSummary>? routingSummaries;

  /// A list of routing summaries where each entry associates to the corresponding
  /// place in the same index in the places field. If the routing summary is not
  /// available for one of the places, it will contain an empty entry. This list
  /// should have as many entries as the list of places if requested.
  List<ContextualContent>? contextualContents;

  /// A token that can be used to get the next page of results.
  final String? nextPageToken;

  /// A link allows the user to search with the same text query as specified in the request on Google Maps.
  final String? searchUri;

  PlacesResponse({
    List<Place>? places,
    this.routingSummaries,
    this.contextualContents,
    this.nextPageToken,
    this.searchUri,
  }) : places = places ?? <Place>[];

  factory PlacesResponse.fromJson(Map<String, dynamic> json) {
    return _$PlacesResponseFromJson(json);
  }

  @override
  PlacesResponse? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PlacesResponse.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlacesResponseToJson(this);
  }
}
