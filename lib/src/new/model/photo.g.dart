// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PhotoCWProxy {
  Photo name(String? name);

  Photo widthPx(int? widthPx);

  Photo heightPx(int? heightPx);

  Photo authorAttributions(List<AuthorAttribution>? authorAttributions);

  Photo flagContentUri(String? flagContentUri);

  Photo googleMapsUri(String? googleMapsUri);

  Photo photoUri(String? photoUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Photo(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Photo(...).copyWith(id: 12, name: "My name")
  /// ```
  Photo call({
    String? name,
    int? widthPx,
    int? heightPx,
    List<AuthorAttribution>? authorAttributions,
    String? flagContentUri,
    String? googleMapsUri,
    String? photoUri,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPhoto.copyWith(...)` or call `instanceOfPhoto.copyWith.fieldName(value)` for a single field.
class _$PhotoCWProxyImpl implements _$PhotoCWProxy {
  const _$PhotoCWProxyImpl(this._value);

  final Photo _value;

  @override
  Photo name(String? name) => call(name: name);

  @override
  Photo widthPx(int? widthPx) => call(widthPx: widthPx);

  @override
  Photo heightPx(int? heightPx) => call(heightPx: heightPx);

  @override
  Photo authorAttributions(List<AuthorAttribution>? authorAttributions) =>
      call(authorAttributions: authorAttributions);

  @override
  Photo flagContentUri(String? flagContentUri) =>
      call(flagContentUri: flagContentUri);

  @override
  Photo googleMapsUri(String? googleMapsUri) =>
      call(googleMapsUri: googleMapsUri);

  @override
  Photo photoUri(String? photoUri) => call(photoUri: photoUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Photo(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Photo(...).copyWith(id: 12, name: "My name")
  /// ```
  Photo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? widthPx = const $CopyWithPlaceholder(),
    Object? heightPx = const $CopyWithPlaceholder(),
    Object? authorAttributions = const $CopyWithPlaceholder(),
    Object? flagContentUri = const $CopyWithPlaceholder(),
    Object? googleMapsUri = const $CopyWithPlaceholder(),
    Object? photoUri = const $CopyWithPlaceholder(),
  }) {
    return Photo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      widthPx: widthPx == const $CopyWithPlaceholder()
          ? _value.widthPx
          // ignore: cast_nullable_to_non_nullable
          : widthPx as int?,
      heightPx: heightPx == const $CopyWithPlaceholder()
          ? _value.heightPx
          // ignore: cast_nullable_to_non_nullable
          : heightPx as int?,
      authorAttributions: authorAttributions == const $CopyWithPlaceholder()
          ? _value.authorAttributions
          // ignore: cast_nullable_to_non_nullable
          : authorAttributions as List<AuthorAttribution>?,
      flagContentUri: flagContentUri == const $CopyWithPlaceholder()
          ? _value.flagContentUri
          // ignore: cast_nullable_to_non_nullable
          : flagContentUri as String?,
      googleMapsUri: googleMapsUri == const $CopyWithPlaceholder()
          ? _value.googleMapsUri
          // ignore: cast_nullable_to_non_nullable
          : googleMapsUri as String?,
      photoUri: photoUri == const $CopyWithPlaceholder()
          ? _value.photoUri
          // ignore: cast_nullable_to_non_nullable
          : photoUri as String?,
    );
  }
}

extension $PhotoCopyWith on Photo {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPhoto.copyWith(...)` or `instanceOfPhoto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PhotoCWProxy get copyWith => _$PhotoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
  name: json['name'] as String?,
  widthPx: (json['widthPx'] as num?)?.toInt(),
  heightPx: (json['heightPx'] as num?)?.toInt(),
  authorAttributions: (json['authorAttributions'] as List<dynamic>?)
      ?.map((e) => AuthorAttribution.fromJson(e as Map<String, dynamic>))
      .toList(),
  flagContentUri: json['flagContentUri'] as String?,
  googleMapsUri: json['googleMapsUri'] as String?,
  photoUri: json['photoUri'] as String?,
);

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
  'name': ?instance.name,
  'widthPx': ?instance.widthPx,
  'heightPx': ?instance.heightPx,
  'authorAttributions': ?instance.authorAttributions,
  'flagContentUri': ?instance.flagContentUri,
  'googleMapsUri': ?instance.googleMapsUri,
  'photoUri': ?instance.photoUri,
};
