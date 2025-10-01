// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlacesResponseCWProxy {
  PlacesResponse places(List<Place>? places);

  PlacesResponse routingSummaries(List<RoutingSummary>? routingSummaries);

  PlacesResponse contextualContents(
    List<ContextualContent>? contextualContents,
  );

  PlacesResponse nextPageToken(String? nextPageToken);

  PlacesResponse searchUri(String? searchUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PlacesResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PlacesResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PlacesResponse call({
    List<Place>? places,
    List<RoutingSummary>? routingSummaries,
    List<ContextualContent>? contextualContents,
    String? nextPageToken,
    String? searchUri,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPlacesResponse.copyWith(...)` or call `instanceOfPlacesResponse.copyWith.fieldName(value)` for a single field.
class _$PlacesResponseCWProxyImpl implements _$PlacesResponseCWProxy {
  const _$PlacesResponseCWProxyImpl(this._value);

  final PlacesResponse _value;

  @override
  PlacesResponse places(List<Place>? places) => call(places: places);

  @override
  PlacesResponse routingSummaries(List<RoutingSummary>? routingSummaries) =>
      call(routingSummaries: routingSummaries);

  @override
  PlacesResponse contextualContents(
    List<ContextualContent>? contextualContents,
  ) => call(contextualContents: contextualContents);

  @override
  PlacesResponse nextPageToken(String? nextPageToken) =>
      call(nextPageToken: nextPageToken);

  @override
  PlacesResponse searchUri(String? searchUri) => call(searchUri: searchUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PlacesResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PlacesResponse(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPlacesResponse.copyWith(...)` or `instanceOfPlacesResponse.copyWith.fieldName(...)`.
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
      'routingSummaries': ?instance.routingSummaries,
      'contextualContents': ?instance.contextualContents,
      'nextPageToken': ?instance.nextPageToken,
      'searchUri': ?instance.searchUri,
    };
