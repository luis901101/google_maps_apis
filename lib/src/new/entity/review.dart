import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/entity/author_attribution.dart';
import 'package:google_maps_apis/src/new/entity/localized_text.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review.g.dart';

/// Information about a review of a place.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#review
@JsonSerializable()
@CopyWith()
class Review extends Jsonable<Review> {
  /// A reference representing this place review which may be used to look up
  /// this place review again (also called the API "resource"
  /// name: places/{placeId}/reviews/{review}).
  final String? name;

  /// A string of formatted recent time, expressing the review time relative to
  /// the current time in a form appropriate for the language and country.
  final String? relativePublishTimeDescription;

  /// The localized text of the review.
  final LocalizedText? text;

  /// The review text in its original language.
  final LocalizedText? originalText;

  /// A number between 1.0 and 5.0, also called the number of stars.
  final int? rating;

  /// This review's author.
  final AuthorAttribution? authorAttribution;

  /// Timestamp for the review.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final DateTime? publishTime;

  /// A link where users can flag a problem with the review.
  final String? flagContentUri;

  /// A link to show the review on Google Maps.
  final String? googleMapsUri;

  Review({
    this.name,
    this.relativePublishTimeDescription,
    this.text,
    this.originalText,
    this.rating,
    this.authorAttribution,
    this.publishTime,
    this.flagContentUri,
    this.googleMapsUri,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return _$ReviewFromJson(json);
  }

  @override
  Review? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Review.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ReviewToJson(this);
  }
}
