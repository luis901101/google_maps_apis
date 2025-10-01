// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_attribution.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthorAttributionCWProxy {
  AuthorAttribution displayName(String? displayName);

  AuthorAttribution uri(String? uri);

  AuthorAttribution photoUri(String? photoUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AuthorAttribution(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AuthorAttribution(...).copyWith(id: 12, name: "My name")
  /// ```
  AuthorAttribution call({String? displayName, String? uri, String? photoUri});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAuthorAttribution.copyWith(...)` or call `instanceOfAuthorAttribution.copyWith.fieldName(value)` for a single field.
class _$AuthorAttributionCWProxyImpl implements _$AuthorAttributionCWProxy {
  const _$AuthorAttributionCWProxyImpl(this._value);

  final AuthorAttribution _value;

  @override
  AuthorAttribution displayName(String? displayName) =>
      call(displayName: displayName);

  @override
  AuthorAttribution uri(String? uri) => call(uri: uri);

  @override
  AuthorAttribution photoUri(String? photoUri) => call(photoUri: photoUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AuthorAttribution(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AuthorAttribution(...).copyWith(id: 12, name: "My name")
  /// ```
  AuthorAttribution call({
    Object? displayName = const $CopyWithPlaceholder(),
    Object? uri = const $CopyWithPlaceholder(),
    Object? photoUri = const $CopyWithPlaceholder(),
  }) {
    return AuthorAttribution(
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
      uri: uri == const $CopyWithPlaceholder()
          ? _value.uri
          // ignore: cast_nullable_to_non_nullable
          : uri as String?,
      photoUri: photoUri == const $CopyWithPlaceholder()
          ? _value.photoUri
          // ignore: cast_nullable_to_non_nullable
          : photoUri as String?,
    );
  }
}

extension $AuthorAttributionCopyWith on AuthorAttribution {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAuthorAttribution.copyWith(...)` or `instanceOfAuthorAttribution.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthorAttributionCWProxy get copyWith =>
      _$AuthorAttributionCWProxyImpl(this);
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
