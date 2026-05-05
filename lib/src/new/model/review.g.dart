// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Review] is to generate the code for a copyWith(...) function.
extension $ReviewCopyWithExtension on Review {
  Review copyWith({
    String? name,
    String? relativePublishTimeDescription,
    LocalizedText? text,
    LocalizedText? originalText,
    int? rating,
    AuthorAttribution? authorAttribution,
    DateTime? publishTime,
    String? flagContentUri,
    String? googleMapsUri,
  }) {
    return Review(
      name: name ?? this.name,
      relativePublishTimeDescription:
          relativePublishTimeDescription ?? this.relativePublishTimeDescription,
      text: text ?? this.text,
      originalText: originalText ?? this.originalText,
      rating: rating ?? this.rating,
      authorAttribution: authorAttribution ?? this.authorAttribution,
      publishTime: publishTime ?? this.publishTime,
      flagContentUri: flagContentUri ?? this.flagContentUri,
      googleMapsUri: googleMapsUri ?? this.googleMapsUri,
    );
  }
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
