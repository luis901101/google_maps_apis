// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_maps_links.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [GoogleMapsLinks] is to generate the code for a copyWith(...) function.
extension $GoogleMapsLinksCopyWithExtension on GoogleMapsLinks {
  GoogleMapsLinks copyWith({
    String? directionsUri,
    String? placeUri,
    String? writeAReviewUri,
    String? reviewsUri,
    String? photosUri,
  }) {
    return GoogleMapsLinks(
      directionsUri: directionsUri ?? this.directionsUri,
      placeUri: placeUri ?? this.placeUri,
      writeAReviewUri: writeAReviewUri ?? this.writeAReviewUri,
      reviewsUri: reviewsUri ?? this.reviewsUri,
      photosUri: photosUri ?? this.photosUri,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleMapsLinks _$GoogleMapsLinksFromJson(Map<String, dynamic> json) =>
    GoogleMapsLinks(
      directionsUri: json['directionsUri'] as String?,
      placeUri: json['placeUri'] as String?,
      writeAReviewUri: json['writeAReviewUri'] as String?,
      reviewsUri: json['reviewsUri'] as String?,
      photosUri: json['photosUri'] as String?,
    );

Map<String, dynamic> _$GoogleMapsLinksToJson(GoogleMapsLinks instance) =>
    <String, dynamic>{
      'directionsUri': ?instance.directionsUri,
      'placeUri': ?instance.placeUri,
      'writeAReviewUri': ?instance.writeAReviewUri,
      'reviewsUri': ?instance.reviewsUri,
      'photosUri': ?instance.photosUri,
    };
