// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_maps_links.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GoogleMapsLinksCWProxy {
  GoogleMapsLinks directionsUri(String? directionsUri);

  GoogleMapsLinks placeUri(String? placeUri);

  GoogleMapsLinks writeAReviewUri(String? writeAReviewUri);

  GoogleMapsLinks reviewsUri(String? reviewsUri);

  GoogleMapsLinks photosUri(String? photosUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GoogleMapsLinks(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GoogleMapsLinks(...).copyWith(id: 12, name: "My name")
  /// ```
  GoogleMapsLinks call({
    String? directionsUri,
    String? placeUri,
    String? writeAReviewUri,
    String? reviewsUri,
    String? photosUri,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGoogleMapsLinks.copyWith(...)` or call `instanceOfGoogleMapsLinks.copyWith.fieldName(value)` for a single field.
class _$GoogleMapsLinksCWProxyImpl implements _$GoogleMapsLinksCWProxy {
  const _$GoogleMapsLinksCWProxyImpl(this._value);

  final GoogleMapsLinks _value;

  @override
  GoogleMapsLinks directionsUri(String? directionsUri) =>
      call(directionsUri: directionsUri);

  @override
  GoogleMapsLinks placeUri(String? placeUri) => call(placeUri: placeUri);

  @override
  GoogleMapsLinks writeAReviewUri(String? writeAReviewUri) =>
      call(writeAReviewUri: writeAReviewUri);

  @override
  GoogleMapsLinks reviewsUri(String? reviewsUri) =>
      call(reviewsUri: reviewsUri);

  @override
  GoogleMapsLinks photosUri(String? photosUri) => call(photosUri: photosUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GoogleMapsLinks(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GoogleMapsLinks(...).copyWith(id: 12, name: "My name")
  /// ```
  GoogleMapsLinks call({
    Object? directionsUri = const $CopyWithPlaceholder(),
    Object? placeUri = const $CopyWithPlaceholder(),
    Object? writeAReviewUri = const $CopyWithPlaceholder(),
    Object? reviewsUri = const $CopyWithPlaceholder(),
    Object? photosUri = const $CopyWithPlaceholder(),
  }) {
    return GoogleMapsLinks(
      directionsUri: directionsUri == const $CopyWithPlaceholder()
          ? _value.directionsUri
          // ignore: cast_nullable_to_non_nullable
          : directionsUri as String?,
      placeUri: placeUri == const $CopyWithPlaceholder()
          ? _value.placeUri
          // ignore: cast_nullable_to_non_nullable
          : placeUri as String?,
      writeAReviewUri: writeAReviewUri == const $CopyWithPlaceholder()
          ? _value.writeAReviewUri
          // ignore: cast_nullable_to_non_nullable
          : writeAReviewUri as String?,
      reviewsUri: reviewsUri == const $CopyWithPlaceholder()
          ? _value.reviewsUri
          // ignore: cast_nullable_to_non_nullable
          : reviewsUri as String?,
      photosUri: photosUri == const $CopyWithPlaceholder()
          ? _value.photosUri
          // ignore: cast_nullable_to_non_nullable
          : photosUri as String?,
    );
  }
}

extension $GoogleMapsLinksCopyWith on GoogleMapsLinks {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGoogleMapsLinks.copyWith(...)` or `instanceOfGoogleMapsLinks.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GoogleMapsLinksCWProxy get copyWith => _$GoogleMapsLinksCWProxyImpl(this);
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
