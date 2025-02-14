import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/entity/author_attribution.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

/// Information about a photo of a place.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#photo
@JsonSerializable()
@CopyWith()
class Photo extends Jsonable<Photo> {
  /// Identifier. A reference representing this place photo which may be used to
  /// look up this place photo again (also called the API "resource"
  /// name: places/{placeId}/photos/{photo}).
  final String? name;

  /// The maximum available width, in pixels.
  final int? widthPx;

  /// The maximum available height, in pixels.
  final int? heightPx;

  /// This photo's authors.
  final List<AuthorAttribution>? authorAttributions;

  /// A link where users can flag a problem with the photo.
  final String? flagContentUri;

  /// A link to show the photo on Google Maps.
  final String? googleMapsUri;

  /// A link to the photo's URL.
  final String? photoUri;

  Photo({
    this.name,
    this.widthPx,
    this.heightPx,
    this.authorAttributions,
    this.flagContentUri,
    this.googleMapsUri,
    this.photoUri,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return _$PhotoFromJson(json);
  }

  @override
  Photo? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Photo.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PhotoToJson(this);
  }
}
