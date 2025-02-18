import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/formattable_text.dart';
import 'package:google_maps_apis/src/new/model/structured_format.dart';
import 'package:google_maps_apis/src/new/enums/place_type.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_prediction.g.dart';

/// Prediction results for a Place Autocomplete prediction.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/autocomplete#placeprediction
@JsonSerializable()
@CopyWith()
class PlacePrediction extends Jsonable<PlacePrediction> {
  /// The resource name of the suggested Place. This name can be used in other
  /// APIs that accept Place names.
  final String? place;

  /// The unique identifier of the suggested Place. This identifier can be used
  /// in other APIs that accept Place IDs.
  final String? placeId;

  /// Contains the human-readable name for the returned result. For establishment
  /// results, this is usually the business name and address.
  ///
  /// [text] is recommended for developers who wish to show a single UI element.
  /// Developers who wish to show two separate, but related, UI elements may want
  /// to use [structuredFormat] instead. They are two different ways to represent a
  /// Place prediction. Users should not try to parse [structuredFormat] into [text]
  /// or vice versa.
  ///
  /// This text may be different from the [displayName] returned by places.get.
  ///
  /// May be in mixed languages if the request [input] and [languageCode] are in
  /// different languages or if the Place does not have a translation from the
  /// local language to [languageCode].
  final FormattableText? text;

  /// A breakdown of the Place prediction into main text containing the name of
  /// the Place and secondary text containing additional disambiguating features
  /// (such as a city or region).
  ///
  /// [structuredFormat] is recommended for developers who wish to show two separate,
  /// but related, UI elements. Developers who wish to show a single UI element
  /// may want to use [text] instead. They are two different ways to represent a
  /// Place prediction. Users should not try to parse [structuredFormat] into [text]
  /// or vice versa.
  final StructuredFormat? structuredFormat;

  /// List of types that apply to this Place from Table A or Table B in
  /// https://developers.google.com/maps/documentation/places/web-service/place-types.
  ///
  /// A type is a categorization of a Place. Places with shared types will share
  /// similar characteristics.
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? types;

  /// The length of the geodesic in meters from origin if origin is specified.
  /// Certain predictions such as routes may not populate this field.
  final int? distanceMeters;

  PlacePrediction({
    this.place,
    this.placeId,
    this.text,
    this.structuredFormat,
    this.types,
    this.distanceMeters,
  });

  factory PlacePrediction.fromJson(Map<String, dynamic> json) {
    return _$PlacePredictionFromJson(json);
  }

  @override
  PlacePrediction? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PlacePrediction.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlacePredictionToJson(this);
  }
}
