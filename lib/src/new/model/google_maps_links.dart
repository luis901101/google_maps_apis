import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'google_maps_links.g.dart';

/// Links to trigger different Google Maps actions.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#googlemapslinks
@JsonSerializable()
@CopyWith()
class GoogleMapsLinks extends Jsonable<GoogleMapsLinks> {
  ///  A link to show the directions to the place. The link only populates the
  ///  destination location and uses the default travel mode [DRIVE].
  final String? directionsUri;

  /// A link to show this place.
  final String? placeUri;

  /// A link to write a review for this place. This link is currently not
  /// supported on Google Maps Mobile and only works on the web version of
  /// Google Maps.
  final String? writeAReviewUri;

  /// A link to show reviews of this place. This link is currently
  /// not supported on Google Maps Mobile and only works on the web version
  /// of Google Maps.
  final String? reviewsUri;

  /// A link to show photos of this place. This link is currently
  /// not supported on Google Maps Mobile and only works on the web version
  /// of Google Maps.
  final String? photosUri;

  GoogleMapsLinks({
    this.directionsUri,
    this.placeUri,
    this.writeAReviewUri,
    this.reviewsUri,
    this.photosUri,
  });

  factory GoogleMapsLinks.fromJson(Map<String, dynamic> json) {
    return _$GoogleMapsLinksFromJson(json);
  }

  @override
  GoogleMapsLinks? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? GoogleMapsLinks.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$GoogleMapsLinksToJson(this);
  }
}
