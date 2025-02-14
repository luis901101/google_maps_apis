import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// The type of ranking to use in a search like nearby search.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#rankpreference
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum RankPreferenceType {
  /// Sorts results based on their popularity.
  popularity('POPULARITY'),

  /// Sorts results based on search relevance.
  relevance('RELEVANCE'),

  /// Sorts results in ascending order by their distance from the specified location.
  distance('DISTANCE'),
  ;

  static const List<RankPreferenceType> nearbySearchRankPreferences = [
    RankPreferenceType.popularity,
    RankPreferenceType.distance,
  ];

  static const List<RankPreferenceType> textSearchRankPreferences = [
    RankPreferenceType.relevance,
    RankPreferenceType.distance,
  ];

  final String name;
  const RankPreferenceType(this.name);

  static RankPreferenceType? valueOf(String name) =>
      RankPreferenceType.values.firstWhereOrNull((value) => value.name == name);

  static RankPreferenceType? validForNearbySearch(RankPreferenceType? type) =>
      type == null || nearbySearchRankPreferences.contains(type) ? type : null;

  static RankPreferenceType? validForTextSearch(RankPreferenceType? type) =>
      type == null || textSearchRankPreferences.contains(type) ? type : null;
}
