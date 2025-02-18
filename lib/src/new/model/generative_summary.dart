import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/localized_text.dart';
import 'package:google_maps_apis/src/new/model/references.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generative_summary.g.dart';

/// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
///
/// AI-generated summary of the place.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#generativesummary
@JsonSerializable()
@CopyWith()
class GenerativeSummary extends Jsonable<GenerativeSummary> {
  /// The overview of the place.
  final LocalizedText? overview;

  /// A link where users can flag a problem with the overview summary.
  final String? overviewFlagContentUri;

  /// The detailed description of the place.
  final LocalizedText? description;

  /// A link where users can flag a problem with the description summary.
  final String? descriptionFlagContentUri;

  /// References that are used to generate the summary description.
  final References? references;

  GenerativeSummary({
    this.overview,
    this.overviewFlagContentUri,
    this.description,
    this.descriptionFlagContentUri,
    this.references,
  });

  factory GenerativeSummary.fromJson(Map<String, dynamic> json) {
    return _$GenerativeSummaryFromJson(json);
  }

  @override
  GenerativeSummary? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? GenerativeSummary.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$GenerativeSummaryToJson(this);
  }
}
