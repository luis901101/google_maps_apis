import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/formattable_text.dart';
import 'package:google_maps_apis/src/new/model/structured_format.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_prediction.g.dart';

/// Prediction results for a Query Autocomplete prediction.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/autocomplete#queryprediction
@JsonSerializable()
@CopyWith()
class QueryPrediction extends Jsonable<QueryPrediction> {
  /// The predicted text. This text does not represent a Place, but rather a text
  /// query that could be used in a search endpoint (for example, Text Search).
  ///
  /// [text] is recommended for developers who wish to show a single UI element.
  /// Developers who wish to show two separate, but related, UI elements may
  /// want to use [structuredFormat] instead. They are two different ways to
  /// represent a query prediction. Users should not try to parse [structuredFormat]
  /// into [text] or vice versa.
  ///
  /// May be in mixed languages if the request [input] and [languageCode] are in
  /// different languages or if part of the query does not have a translation
  /// from the local language to [languageCode].
  final FormattableText? text;

  /// A breakdown of the query prediction into main text containing the query and
  /// secondary text containing additional disambiguating features (such as a city or region).
  ///
  /// [structuredFormat] is recommended for developers who wish to show two separate,
  /// but related, UI elements. Developers who wish to show a single UI element
  /// may want to use [text] instead. They are two different ways to represent a
  /// query prediction. Users should not try to parse [structuredFormat] into [text]
  /// or vice versa.
  final StructuredFormat? structuredFormat;

  QueryPrediction({this.text, this.structuredFormat});

  factory QueryPrediction.fromJson(Map<String, dynamic> json) {
    return _$QueryPredictionFromJson(json);
  }

  @override
  QueryPrediction? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? QueryPrediction.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$QueryPredictionToJson(this);
  }
}
