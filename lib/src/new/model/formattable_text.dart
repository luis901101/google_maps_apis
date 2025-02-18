import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/string_range.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'formattable_text.g.dart';

/// Text representing a Place or query prediction. The text may be used as is or formatted.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/autocomplete#formattabletext
@JsonSerializable()
@CopyWith()
class FormattableText extends Jsonable<FormattableText> {
  /// Text that may be used as is or formatted with matches.
  final String? text;

  /// A list of string ranges identifying where the input request matched in [text].
  /// The ranges can be used to format specific parts of [text]. The substrings
  /// may not be exact matches of [input] if the matching was determined by
  /// criteria other than string matching (for example, spell corrections or
  /// transliterations).
  ///
  /// These values are Unicode character offsets of [text]. The ranges are
  /// guaranteed to be ordered in increasing offset values.
  final List<StringRange>? matches;

  FormattableText({
    this.text,
    this.matches,
  });

  factory FormattableText.fromJson(Map<String, dynamic> json) {
    return _$FormattableTextFromJson(json);
  }

  @override
  FormattableText? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? FormattableText.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$FormattableTextToJson(this);
  }
}
