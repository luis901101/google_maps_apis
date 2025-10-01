import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'localized_text.g.dart';

/// Localized variant of a text in a particular language.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#localizedtext
@JsonSerializable()
@CopyWith()
class LocalizedText extends Jsonable<LocalizedText> {
  /// Localized string in the language corresponding to [languageCode] below.
  final String? text;

  /// The text's BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  final String? languageCode;

  LocalizedText({this.text, this.languageCode});

  factory LocalizedText.fromJson(Map<String, dynamic> json) {
    return _$LocalizedTextFromJson(json);
  }

  @override
  LocalizedText? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? LocalizedText.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LocalizedTextToJson(this);
  }
}
