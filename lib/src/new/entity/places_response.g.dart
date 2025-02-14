// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlacesResponseCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlacesResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PlacesResponse call({
    List<Place>? places,
    List<RoutingSummary>? routingSummaries,
    List<ContextualContent>? contextualContents,
    String? nextPageToken,
    String? searchUri,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlacesResponse.copyWith(...)`.
class _$PlacesResponseCWProxyImpl implements _$PlacesResponseCWProxy {
  const _$PlacesResponseCWProxyImpl(this._value);

  final PlacesResponse _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlacesResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PlacesResponse call({
    Object? places = const $CopyWithPlaceholder(),
    Object? routingSummaries = const $CopyWithPlaceholder(),
    Object? contextualContents = const $CopyWithPlaceholder(),
    Object? nextPageToken = const $CopyWithPlaceholder(),
    Object? searchUri = const $CopyWithPlaceholder(),
  }) {
    return PlacesResponse(
      places: places == const $CopyWithPlaceholder()
          ? _value.places
          // ignore: cast_nullable_to_non_nullable
          : places as List<Place>?,
      routingSummaries: routingSummaries == const $CopyWithPlaceholder()
          ? _value.routingSummaries
          // ignore: cast_nullable_to_non_nullable
          : routingSummaries as List<RoutingSummary>?,
      contextualContents: contextualContents == const $CopyWithPlaceholder()
          ? _value.contextualContents
          // ignore: cast_nullable_to_non_nullable
          : contextualContents as List<ContextualContent>?,
      nextPageToken: nextPageToken == const $CopyWithPlaceholder()
          ? _value.nextPageToken
          // ignore: cast_nullable_to_non_nullable
          : nextPageToken as String?,
      searchUri: searchUri == const $CopyWithPlaceholder()
          ? _value.searchUri
          // ignore: cast_nullable_to_non_nullable
          : searchUri as String?,
    );
  }
}

extension $PlacesResponseCopyWith on PlacesResponse {
  /// Returns a callable class that can be used as follows: `instanceOfPlacesResponse.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$PlacesResponseCWProxy get copyWith => _$PlacesResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) =>
    PlacesResponse(
      places: (json['places'] as List<dynamic>?)
          ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
      routingSummaries: (json['routingSummaries'] as List<dynamic>?)
          ?.map((e) => RoutingSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
      contextualContents: (json['contextualContents'] as List<dynamic>?)
          ?.map((e) => ContextualContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
      searchUri: json['searchUri'] as String?,
    );

Map<String, dynamic> _$PlacesResponseToJson(PlacesResponse instance) =>
    <String, dynamic>{
      'places': instance.places,
      if (instance.routingSummaries case final value?)
        'routingSummaries': value,
      if (instance.contextualContents case final value?)
        'contextualContents': value,
      if (instance.nextPageToken case final value?) 'nextPageToken': value,
      if (instance.searchUri case final value?) 'searchUri': value,
    };
