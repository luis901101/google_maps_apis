// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contextual_content.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContextualContentCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ContextualContent(...).copyWith(id: 12, name: "My name")
  /// ````
  ContextualContent call({
    List<Review>? reviews,
    List<Photo>? photos,
    List<Justification>? justifications,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfContextualContent.copyWith(...)`.
class _$ContextualContentCWProxyImpl implements _$ContextualContentCWProxy {
  const _$ContextualContentCWProxyImpl(this._value);

  final ContextualContent _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ContextualContent(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfContextualContent.copyWith(...)`.
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
      if (instance.reviews case final value?) 'reviews': value,
      if (instance.photos case final value?) 'photos': value,
      if (instance.justifications case final value?) 'justifications': value,
    };
