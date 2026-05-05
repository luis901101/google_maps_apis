// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contextual_content.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [ContextualContent] is to generate the code for a copyWith(...) function.
extension $ContextualContentCopyWithExtension on ContextualContent {
  ContextualContent copyWith({
    List<Review>? reviews,
    List<Photo>? photos,
    List<Justification>? justifications,
  }) {
    return ContextualContent(
      reviews:
          ((reviews?.isNotEmpty ?? false) ? reviews : null) ?? this.reviews,
      photos: ((photos?.isNotEmpty ?? false) ? photos : null) ?? this.photos,
      justifications:
          ((justifications?.isNotEmpty ?? false) ? justifications : null) ??
          this.justifications,
    );
  }
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
