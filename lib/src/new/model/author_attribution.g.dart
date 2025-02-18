// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_attribution.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthorAttributionCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// AuthorAttribution(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthorAttribution call({
    String? displayName,
    String? uri,
    String? photoUri,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthorAttribution.copyWith(...)`.
class _$AuthorAttributionCWProxyImpl implements _$AuthorAttributionCWProxy {
  const _$AuthorAttributionCWProxyImpl(this._value);

  final AuthorAttribution _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// AuthorAttribution(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfAuthorAttribution.copyWith(...)`.
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
      if (instance.displayName case final value?) 'displayName': value,
      if (instance.uri case final value?) 'uri': value,
      if (instance.photoUri case final value?) 'photoUri': value,
    };
