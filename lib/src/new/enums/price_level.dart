import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Price level of a place.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#pricelevel
enum PriceLevel {
  /// Place price level is unspecified or unknown.
  @JsonValue('PRICE_LEVEL_UNSPECIFIED')
  unspecified('PRICE_LEVEL_UNSPECIFIED', -1),

  /// Place provides free services.
  @JsonValue('PRICE_LEVEL_FREE')
  free('PRICE_LEVEL_FREE', 0),

  /// Place provides inexpensive services.
  @JsonValue('PRICE_LEVEL_INEXPENSIVE')
  inexpensive('PRICE_LEVEL_INEXPENSIVE', 1),

  /// Place provides moderately priced services.
  @JsonValue('PRICE_LEVEL_MODERATE')
  moderate('PRICE_LEVEL_MODERATE', 2),

  /// Place provides expensive services.
  @JsonValue('PRICE_LEVEL_EXPENSIVE')
  expensive('PRICE_LEVEL_EXPENSIVE', 3),

  /// Place provides very expensive services.
  @JsonValue('PRICE_LEVEL_VERY_EXPENSIVE')
  veryExpensive('PRICE_LEVEL_VERY_EXPENSIVE', 4),
  ;

  final String name;

  /// The index of the price level from -1 to 4. This value can be used as a reference
  /// of the legacy Place PriceLevel from old apis.
  final int levelIndex;
  const PriceLevel(this.name, this.levelIndex);

  static PriceLevel? valueOf(String name) =>
      PriceLevel.values.firstWhereOrNull((value) => value.name == name);
}
