import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/suggestion.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_suggestions.g.dart';

/// Response DTO for Search Nearby and Search Autocomplete.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/autocomplete#response-body
@JsonSerializable()
@CopyWith()
class PlacesSuggestions extends Jsonable<PlacesSuggestions> {
  /// Contains a list of suggestions, ordered in descending order of relevance.
  final List<Suggestion> suggestions;

  PlacesSuggestions({
    List<Suggestion>? suggestions,
  }) : suggestions = suggestions ?? <Suggestion>[];

  factory PlacesSuggestions.fromJson(Map<String, dynamic> json) {
    return _$PlacesSuggestionsFromJson(json);
  }

  @override
  PlacesSuggestions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PlacesSuggestions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlacesSuggestionsToJson(this);
  }
}
