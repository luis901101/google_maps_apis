// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewCWProxy {
  Review name(String? name);

  Review relativePublishTimeDescription(String? relativePublishTimeDescription);

  Review text(LocalizedText? text);

  Review originalText(LocalizedText? originalText);

  Review rating(int? rating);

  Review authorAttribution(AuthorAttribution? authorAttribution);

  Review publishTime(DateTime? publishTime);

  Review flagContentUri(String? flagContentUri);

  Review googleMapsUri(String? googleMapsUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Review(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Review(...).copyWith(id: 12, name: "My name")
  /// ```
  Review call({
    String? name,
    String? relativePublishTimeDescription,
    LocalizedText? text,
    LocalizedText? originalText,
    int? rating,
    AuthorAttribution? authorAttribution,
    DateTime? publishTime,
    String? flagContentUri,
    String? googleMapsUri,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReview.copyWith(...)` or call `instanceOfReview.copyWith.fieldName(value)` for a single field.
class _$ReviewCWProxyImpl implements _$ReviewCWProxy {
  const _$ReviewCWProxyImpl(this._value);

  final Review _value;

  @override
  Review name(String? name) => call(name: name);

  @override
  Review relativePublishTimeDescription(
    String? relativePublishTimeDescription,
  ) => call(relativePublishTimeDescription: relativePublishTimeDescription);

  @override
  Review text(LocalizedText? text) => call(text: text);

  @override
  Review originalText(LocalizedText? originalText) =>
      call(originalText: originalText);

  @override
  Review rating(int? rating) => call(rating: rating);

  @override
  Review authorAttribution(AuthorAttribution? authorAttribution) =>
      call(authorAttribution: authorAttribution);

  @override
  Review publishTime(DateTime? publishTime) => call(publishTime: publishTime);

  @override
  Review flagContentUri(String? flagContentUri) =>
      call(flagContentUri: flagContentUri);

  @override
  Review googleMapsUri(String? googleMapsUri) =>
      call(googleMapsUri: googleMapsUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Review(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Review(...).copyWith(id: 12, name: "My name")
  /// ```
  Review call({
    Object? name = const $CopyWithPlaceholder(),
    Object? relativePublishTimeDescription = const $CopyWithPlaceholder(),
    Object? text = const $CopyWithPlaceholder(),
    Object? originalText = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? authorAttribution = const $CopyWithPlaceholder(),
    Object? publishTime = const $CopyWithPlaceholder(),
    Object? flagContentUri = const $CopyWithPlaceholder(),
    Object? googleMapsUri = const $CopyWithPlaceholder(),
  }) {
    return Review(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      relativePublishTimeDescription:
          relativePublishTimeDescription == const $CopyWithPlaceholder()
          ? _value.relativePublishTimeDescription
          // ignore: cast_nullable_to_non_nullable
          : relativePublishTimeDescription as String?,
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as LocalizedText?,
      originalText: originalText == const $CopyWithPlaceholder()
          ? _value.originalText
          // ignore: cast_nullable_to_non_nullable
          : originalText as LocalizedText?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int?,
      authorAttribution: authorAttribution == const $CopyWithPlaceholder()
          ? _value.authorAttribution
          // ignore: cast_nullable_to_non_nullable
          : authorAttribution as AuthorAttribution?,
      publishTime: publishTime == const $CopyWithPlaceholder()
          ? _value.publishTime
          // ignore: cast_nullable_to_non_nullable
          : publishTime as DateTime?,
      flagContentUri: flagContentUri == const $CopyWithPlaceholder()
          ? _value.flagContentUri
          // ignore: cast_nullable_to_non_nullable
          : flagContentUri as String?,
      googleMapsUri: googleMapsUri == const $CopyWithPlaceholder()
          ? _value.googleMapsUri
          // ignore: cast_nullable_to_non_nullable
          : googleMapsUri as String?,
    );
  }
}

extension $ReviewCopyWith on Review {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReview.copyWith(...)` or `instanceOfReview.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewCWProxy get copyWith => _$ReviewCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
  name: json['name'] as String?,
  relativePublishTimeDescription:
      json['relativePublishTimeDescription'] as String?,
  text: json['text'] == null
      ? null
      : LocalizedText.fromJson(json['text'] as Map<String, dynamic>),
  originalText: json['originalText'] == null
      ? null
      : LocalizedText.fromJson(json['originalText'] as Map<String, dynamic>),
  rating: (json['rating'] as num?)?.toInt(),
  authorAttribution: json['authorAttribution'] == null
      ? null
      : AuthorAttribution.fromJson(
          json['authorAttribution'] as Map<String, dynamic>,
        ),
  publishTime: json['publishTime'] == null
      ? null
      : DateTime.parse(json['publishTime'] as String),
  flagContentUri: json['flagContentUri'] as String?,
  googleMapsUri: json['googleMapsUri'] as String?,
);

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
  'name': ?instance.name,
  'relativePublishTimeDescription': ?instance.relativePublishTimeDescription,
  'text': ?instance.text,
  'originalText': ?instance.originalText,
  'rating': ?instance.rating,
  'authorAttribution': ?instance.authorAttribution,
  'publishTime': ?instance.publishTime?.toIso8601String(),
  'flagContentUri': ?instance.flagContentUri,
  'googleMapsUri': ?instance.googleMapsUri,
};
