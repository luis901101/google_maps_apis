// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contextual_content.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContextualContentCWProxy {
  ContextualContent reviews(List<Review>? reviews);

  ContextualContent photos(List<Photo>? photos);

  ContextualContent justifications(List<Justification>? justifications);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ContextualContent(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ContextualContent(...).copyWith(id: 12, name: "My name")
  /// ```
  ContextualContent call({
    List<Review>? reviews,
    List<Photo>? photos,
    List<Justification>? justifications,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfContextualContent.copyWith(...)` or call `instanceOfContextualContent.copyWith.fieldName(value)` for a single field.
class _$ContextualContentCWProxyImpl implements _$ContextualContentCWProxy {
  const _$ContextualContentCWProxyImpl(this._value);

  final ContextualContent _value;

  @override
  ContextualContent reviews(List<Review>? reviews) => call(reviews: reviews);

  @override
  ContextualContent photos(List<Photo>? photos) => call(photos: photos);

  @override
  ContextualContent justifications(List<Justification>? justifications) =>
      call(justifications: justifications);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ContextualContent(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ContextualContent(...).copyWith(id: 12, name: "My name")
  /// ```
  ContextualContent call({
    Object? reviews = const $CopyWithPlaceholder(),
    Object? photos = const $CopyWithPlaceholder(),
    Object? justifications = const $CopyWithPlaceholder(),
  }) {
    return ContextualContent(
      reviews: reviews == const $CopyWithPlaceholder()
          ? _value.reviews
          // ignore: cast_nullable_to_non_nullable
          : reviews as List<Review>?,
      photos: photos == const $CopyWithPlaceholder()
          ? _value.photos
          // ignore: cast_nullable_to_non_nullable
          : photos as List<Photo>?,
      justifications: justifications == const $CopyWithPlaceholder()
          ? _value.justifications
          // ignore: cast_nullable_to_non_nullable
          : justifications as List<Justification>?,
    );
  }
}

extension $ContextualContentCopyWith on ContextualContent {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfContextualContent.copyWith(...)` or `instanceOfContextualContent.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ContextualContentCWProxy get copyWith =>
      _$ContextualContentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContextualContent _$ContextualContentFromJson(Map<String, dynamic> json) =>
    ContextualContent(
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      justifications: (json['justifications'] as List<dynamic>?)
          ?.map((e) => Justification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContextualContentToJson(ContextualContent instance) =>
    <String, dynamic>{
      'reviews': ?instance.reviews,
      'photos': ?instance.photos,
      'justifications': ?instance.justifications,
    };
