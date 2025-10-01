import 'package:google_maps_apis/src/new/utils/jsonable.dart';

abstract class BaseFilter<T extends Object> extends Jsonable<T> {
  /// Place details will be displayed with the preferred language if available.
  ///
  /// Current list of supported languages: https://developers.google.com/maps/faq#languagesupport.
  final String? languageCode;

  /// The Unicode country/region code (CLDR) of the location where the
  /// request is coming from. This parameter is used to display the place details,
  /// like region-specific place name, if available. The parameter can affect results
  /// based on applicable law. For more information,
  /// see https://www.unicode.org/cldr/charts/latest/supplemental/territory_language_information.html.
  ///
  /// Note that 3-digit region codes are not currently supported.
  final String? regionCode;

  BaseFilter({this.languageCode, this.regionCode});

  @override
  T? fromJsonMap(Map<String, dynamic>? json) => null;
}
