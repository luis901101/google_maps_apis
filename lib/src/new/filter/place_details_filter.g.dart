// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_filter.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaceDetailsFilterCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlaceDetailsFilter(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaceDetailsFilter call({
    String? languageCode,
    String? regionCode,
    String? sessionToken,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaceDetailsFilter.copyWith(...)`.
class _$PlaceDetailsFilterCWProxyImpl implements _$PlaceDetailsFilterCWProxy {
  const _$PlaceDetailsFilterCWProxyImpl(this._value);

  final PlaceDetailsFilter _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlaceDetailsFilter(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfPlaceDetailsFilter.copyWith(...)`.
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
      if (instance.languageCode case final value?) 'languageCode': value,
      if (instance.regionCode case final value?) 'regionCode': value,
      if (instance.sessionToken case final value?) 'sessionToken': value,
    };
