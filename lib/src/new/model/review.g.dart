// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Review(...).copyWith(id: 12, name: "My name")
  /// ````
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReview.copyWith(...)`.
class _$ReviewCWProxyImpl implements _$ReviewCWProxy {
  const _$ReviewCWProxyImpl(this._value);

  final Review _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Review(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfReview.copyWith(...)`.
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
          : LocalizedText.fromJson(
              json['originalText'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toInt(),
      authorAttribution: json['authorAttribution'] == null
          ? null
          : AuthorAttribution.fromJson(
              json['authorAttribution'] as Map<String, dynamic>),
      publishTime: json['publishTime'] == null
          ? null
          : DateTime.parse(json['publishTime'] as String),
      flagContentUri: json['flagContentUri'] as String?,
      googleMapsUri: json['googleMapsUri'] as String?,
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.relativePublishTimeDescription case final value?)
        'relativePublishTimeDescription': value,
      if (instance.text case final value?) 'text': value,
      if (instance.originalText case final value?) 'originalText': value,
      if (instance.rating case final value?) 'rating': value,
      if (instance.authorAttribution case final value?)
        'authorAttribution': value,
      if (instance.publishTime?.toIso8601String() case final value?)
        'publishTime': value,
      if (instance.flagContentUri case final value?) 'flagContentUri': value,
      if (instance.googleMapsUri case final value?) 'googleMapsUri': value,
    };
