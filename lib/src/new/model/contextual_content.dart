import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/justification.dart';
import 'package:google_maps_apis/src/new/model/photo.dart';
import 'package:google_maps_apis/src/new/model/review.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contextual_content.g.dart';

/// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
///
/// Content that is contextual to the place query.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/searchText#contextualcontent
@JsonSerializable()
@CopyWith()
class ContextualContent extends Jsonable<ContextualContent> {
  /// List of reviews about this place, contexual to the place query.
  final List<Review>? reviews;

  /// Information (including references) about photos of this place, contexual to the place query.
  final List<Photo>? photos;

  /// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
  ///
  /// Justifications for the place.
  final List<Justification>? justifications;

  ContextualContent({this.reviews, this.photos, this.justifications});

  factory ContextualContent.fromJson(Map<String, dynamic> json) {
    return _$ContextualContentFromJson(json);
  }

  @override
  ContextualContent? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? ContextualContent.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ContextualContentToJson(this);
  }
}
