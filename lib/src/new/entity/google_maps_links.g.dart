// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_maps_links.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GoogleMapsLinksCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// GoogleMapsLinks(...).copyWith(id: 12, name: "My name")
  /// ````
  GoogleMapsLinks call({
    String? directionsUri,
    String? placeUri,
    String? writeAReviewUri,
    String? reviewsUri,
    String? photosUri,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGoogleMapsLinks.copyWith(...)`.
class _$GoogleMapsLinksCWProxyImpl implements _$GoogleMapsLinksCWProxy {
  const _$GoogleMapsLinksCWProxyImpl(this._value);

  final GoogleMapsLinks _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// GoogleMapsLinks(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfGoogleMapsLinks.copyWith(...)`.
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
      if (instance.directionsUri case final value?) 'directionsUri': value,
      if (instance.placeUri case final value?) 'placeUri': value,
      if (instance.writeAReviewUri case final value?) 'writeAReviewUri': value,
      if (instance.reviewsUri case final value?) 'reviewsUri': value,
      if (instance.photosUri case final value?) 'photosUri': value,
    };
