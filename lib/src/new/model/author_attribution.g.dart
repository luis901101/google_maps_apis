// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_attribution.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [AuthorAttribution] is to generate the code for a copyWith(...) function.
extension $AuthorAttributionCopyWithExtension on AuthorAttribution {
  AuthorAttribution copyWith({
    String? displayName,
    String? uri,
    String? photoUri,
  }) {
    return AuthorAttribution(
      displayName: displayName ?? this.displayName,
      uri: uri ?? this.uri,
      photoUri: photoUri ?? this.photoUri,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorAttribution _$AuthorAttributionFromJson(Map<String, dynamic> json) =>
    AuthorAttribution(
      displayName: json['displayName'] as String?,
      uri: json['uri'] as String?,
      photoUri: json['photoUri'] as String?,
    );

Map<String, dynamic> _$AuthorAttributionToJson(AuthorAttribution instance) =>
    <String, dynamic>{
      'displayName': ?instance.displayName,
      'uri': ?instance.uri,
      'photoUri': ?instance.photoUri,
    };
