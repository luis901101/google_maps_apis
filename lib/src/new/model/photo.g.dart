// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PhotoCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Photo(...).copyWith(id: 12, name: "My name")
  /// ````
  Photo call({
    String? name,
    int? widthPx,
    int? heightPx,
    List<AuthorAttribution>? authorAttributions,
    String? flagContentUri,
    String? googleMapsUri,
    String? photoUri,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPhoto.copyWith(...)`.
class _$PhotoCWProxyImpl implements _$PhotoCWProxy {
  const _$PhotoCWProxyImpl(this._value);

  final Photo _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Photo(...).copyWith(id: 12, name: "My name")
  /// ````
  Photo call({
    Object? name = const $CopyWithPlaceholder(),
    Object? widthPx = const $CopyWithPlaceholder(),
    Object? heightPx = const $CopyWithPlaceholder(),
    Object? authorAttributions = const $CopyWithPlaceholder(),
    Object? flagContentUri = const $CopyWithPlaceholder(),
    Object? googleMapsUri = const $CopyWithPlaceholder(),
    Object? photoUri = const $CopyWithPlaceholder(),
  }) {
    return Photo(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      widthPx: widthPx == const $CopyWithPlaceholder()
          ? _value.widthPx
          // ignore: cast_nullable_to_non_nullable
          : widthPx as int?,
      heightPx: heightPx == const $CopyWithPlaceholder()
          ? _value.heightPx
          // ignore: cast_nullable_to_non_nullable
          : heightPx as int?,
      authorAttributions: authorAttributions == const $CopyWithPlaceholder()
          ? _value.authorAttributions
          // ignore: cast_nullable_to_non_nullable
          : authorAttributions as List<AuthorAttribution>?,
      flagContentUri: flagContentUri == const $CopyWithPlaceholder()
          ? _value.flagContentUri
          // ignore: cast_nullable_to_non_nullable
          : flagContentUri as String?,
      googleMapsUri: googleMapsUri == const $CopyWithPlaceholder()
          ? _value.googleMapsUri
          // ignore: cast_nullable_to_non_nullable
          : googleMapsUri as String?,
      photoUri: photoUri == const $CopyWithPlaceholder()
          ? _value.photoUri
          // ignore: cast_nullable_to_non_nullable
          : photoUri as String?,
    );
  }
}

extension $PhotoCopyWith on Photo {
  /// Returns a callable class that can be used as follows: `instanceOfPhoto.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$PhotoCWProxy get copyWith => _$PhotoCWProxyImpl(this);
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
      if (instance.name case final value?) 'name': value,
      if (instance.widthPx case final value?) 'widthPx': value,
      if (instance.heightPx case final value?) 'heightPx': value,
      if (instance.authorAttributions case final value?)
        'authorAttributions': value,
      if (instance.flagContentUri case final value?) 'flagContentUri': value,
      if (instance.googleMapsUri case final value?) 'googleMapsUri': value,
      if (instance.photoUri case final value?) 'photoUri': value,
    };
