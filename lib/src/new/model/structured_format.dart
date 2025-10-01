import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/formattable_text.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'structured_format.g.dart';

/// Contains a breakdown of a Place or query prediction into main text and
/// secondary text.
///
/// For Place predictions, the main text contains the specific name of the Place.
/// For query predictions, the main text contains the query.
///
/// The secondary text contains additional disambiguating features (such as a
/// city or region) to further identify the Place or refine the query.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/autocomplete#structuredformat
@JsonSerializable()
@CopyWith()
class StructuredFormat extends Jsonable<StructuredFormat> {
  /// Represents the name of the Place or query.
  final FormattableText? mainText;

  /// Represents additional disambiguating features (such as a city or region)
  /// to further identify the Place or refine the query.
  final FormattableText? secondaryText;

  StructuredFormat({this.mainText, this.secondaryText});

  factory StructuredFormat.fromJson(Map<String, dynamic> json) {
    return _$StructuredFormatFromJson(json);
  }

  @override
  StructuredFormat? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? StructuredFormat.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$StructuredFormatToJson(this);
  }
}
