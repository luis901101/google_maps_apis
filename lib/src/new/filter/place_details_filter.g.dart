// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_filter.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [PlaceDetailsFilter] is to generate the code for a copyWith(...) function.
extension $PlaceDetailsFilterCopyWithExtension on PlaceDetailsFilter {
  PlaceDetailsFilter copyWith({
    String? languageCode,
    String? regionCode,
    String? sessionToken,
  }) {
    return PlaceDetailsFilter(
      languageCode: languageCode ?? this.languageCode,
      regionCode: regionCode ?? this.regionCode,
      sessionToken: sessionToken ?? this.sessionToken,
    );
  }
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
