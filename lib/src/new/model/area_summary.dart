import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/content_block.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'area_summary.g.dart';

/// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
///
/// AI-generated summary of the area that the place is in.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#areasummary
@JsonSerializable()
@CopyWith()
class AreaSummary extends Jsonable<AreaSummary> {
  /// Content blocks that compose the area summary. Each block has a separate topic about the area.
  final List<ContentBlock>? contentBlocks;

  /// A link where users can flag a problem with the summary.
  final String? flagContentUri;

  AreaSummary({
    this.contentBlocks,
    this.flagContentUri,
  });

  factory AreaSummary.fromJson(Map<String, dynamic> json) {
    return _$AreaSummaryFromJson(json);
  }

  @override
  AreaSummary? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AreaSummary.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AreaSummaryToJson(this);
  }
}
