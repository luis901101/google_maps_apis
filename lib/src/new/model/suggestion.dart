import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/place_prediction.dart';
import 'package:google_maps_apis/src/new/model/query_prediction.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'suggestion.g.dart';

/// An Autocomplete suggestion result.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/autocomplete#suggestion
@JsonSerializable()
@CopyWith()
class Suggestion extends Jsonable<Suggestion> {
  /// A prediction for a Place.
  final PlacePrediction? placePrediction;

  /// A prediction for a query.
  final QueryPrediction? queryPrediction;

  Suggestion({
    this.placePrediction,
    this.queryPrediction,
  });

  factory Suggestion.fromJson(Map<String, dynamic> json) {
    return _$SuggestionFromJson(json);
  }

  @override
  Suggestion? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Suggestion.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestionToJson(this);
  }
}
