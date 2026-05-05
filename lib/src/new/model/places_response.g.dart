// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [PlacesResponse] is to generate the code for a copyWith(...) function.
extension $PlacesResponseCopyWithExtension on PlacesResponse {
  PlacesResponse copyWith({
    List<Place>? places,
    List<RoutingSummary>? routingSummaries,
    List<ContextualContent>? contextualContents,
    String? nextPageToken,
    String? searchUri,
  }) {
    return PlacesResponse(
      places: ((places?.isNotEmpty ?? false) ? places : null) ?? this.places,
      routingSummaries:
          ((routingSummaries?.isNotEmpty ?? false) ? routingSummaries : null) ??
          this.routingSummaries,
      contextualContents:
          ((contextualContents?.isNotEmpty ?? false)
              ? contextualContents
              : null) ??
          this.contextualContents,
      nextPageToken: nextPageToken ?? this.nextPageToken,
      searchUri: searchUri ?? this.searchUri,
    );
  }
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
