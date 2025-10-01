import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/review.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'references.g.dart';

/// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
///
/// Reference that the generative content is related to.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#references
@JsonSerializable()
@CopyWith()
class References extends Jsonable<References> {
  /// Reviews that serve as references.
  final List<Review>? reviews;

  /// The list of resource names of the referenced places. This name can be used
  /// in other APIs that accept Place resource names.
  final List<String>? places;

  References({this.reviews, this.places});

  factory References.fromJson(Map<String, dynamic> json) {
    return _$ReferencesFromJson(json);
  }

  @override
  References? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? References.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ReferencesToJson(this);
  }
}
