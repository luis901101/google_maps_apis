// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_filter.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaceDetailsFilterCWProxy {
  PlaceDetailsFilter languageCode(String? languageCode);

  PlaceDetailsFilter regionCode(String? regionCode);

  PlaceDetailsFilter sessionToken(String? sessionToken);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PlaceDetailsFilter(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PlaceDetailsFilter(...).copyWith(id: 12, name: "My name")
  /// ```
  PlaceDetailsFilter call({
    String? languageCode,
    String? regionCode,
    String? sessionToken,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPlaceDetailsFilter.copyWith(...)` or call `instanceOfPlaceDetailsFilter.copyWith.fieldName(value)` for a single field.
class _$PlaceDetailsFilterCWProxyImpl implements _$PlaceDetailsFilterCWProxy {
  const _$PlaceDetailsFilterCWProxyImpl(this._value);

  final PlaceDetailsFilter _value;

  @override
  PlaceDetailsFilter languageCode(String? languageCode) =>
      call(languageCode: languageCode);

  @override
  PlaceDetailsFilter regionCode(String? regionCode) =>
      call(regionCode: regionCode);

  @override
  PlaceDetailsFilter sessionToken(String? sessionToken) =>
      call(sessionToken: sessionToken);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PlaceDetailsFilter(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PlaceDetailsFilter(...).copyWith(id: 12, name: "My name")
  /// ```
  PlaceDetailsFilter call({
    Object? languageCode = const $CopyWithPlaceholder(),
    Object? regionCode = const $CopyWithPlaceholder(),
    Object? sessionToken = const $CopyWithPlaceholder(),
  }) {
    return PlaceDetailsFilter(
      languageCode: languageCode == const $CopyWithPlaceholder()
          ? _value.languageCode
          // ignore: cast_nullable_to_non_nullable
          : languageCode as String?,
      regionCode: regionCode == const $CopyWithPlaceholder()
          ? _value.regionCode
          // ignore: cast_nullable_to_non_nullable
          : regionCode as String?,
      sessionToken: sessionToken == const $CopyWithPlaceholder()
          ? _value.sessionToken
          // ignore: cast_nullable_to_non_nullable
          : sessionToken as String?,
    );
  }
}

extension $PlaceDetailsFilterCopyWith on PlaceDetailsFilter {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPlaceDetailsFilter.copyWith(...)` or `instanceOfPlaceDetailsFilter.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaceDetailsFilterCWProxy get copyWith =>
      _$PlaceDetailsFilterCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailsFilter _$PlaceDetailsFilterFromJson(Map<String, dynamic> json) =>
    PlaceDetailsFilter(
      languageCode: json['languageCode'] as String?,
      regionCode: json['regionCode'] as String?,
      sessionToken: json['sessionToken'] as String?,
    );

Map<String, dynamic> _$PlaceDetailsFilterToJson(PlaceDetailsFilter instance) =>
    <String, dynamic>{
      'languageCode': ?instance.languageCode,
      'regionCode': ?instance.regionCode,
      'sessionToken': ?instance.sessionToken,
    };
