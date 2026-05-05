// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Photo] is to generate the code for a copyWith(...) function.
extension $PhotoCopyWithExtension on Photo {
  Photo copyWith({
    String? name,
    int? widthPx,
    int? heightPx,
    List<AuthorAttribution>? authorAttributions,
    String? flagContentUri,
    String? googleMapsUri,
    String? photoUri,
  }) {
    return Photo(
      name: name ?? this.name,
      widthPx: widthPx ?? this.widthPx,
      heightPx: heightPx ?? this.heightPx,
      authorAttributions:
          ((authorAttributions?.isNotEmpty ?? false)
              ? authorAttributions
              : null) ??
          this.authorAttributions,
      flagContentUri: flagContentUri ?? this.flagContentUri,
      googleMapsUri: googleMapsUri ?? this.googleMapsUri,
      photoUri: photoUri ?? this.photoUri,
    );
  }
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
