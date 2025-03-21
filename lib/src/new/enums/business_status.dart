import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Business status for the place.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#businessstatus
enum BusinessStatus {
  /// Default value. This value is unused.
  @JsonValue('BUSINESS_STATUS_UNSPECIFIED')
  businessStatusUnspecified('BUSINESS_STATUS_UNSPECIFIED'),

  /// The establishment is operational, not necessarily open now.
  @JsonValue('OPERATIONAL')
  operational('OPERATIONAL'),

  /// The establishment is temporarily closed.
  @JsonValue('CLOSED_TEMPORARILY')
  closedTemporarily('CLOSED_TEMPORARILY'),

  /// The establishment is permanently closed.
  @JsonValue('CLOSED_PERMANENTLY')
  closedPermanently('CLOSED_PERMANENTLY'),
  ;

  final String name;
  const BusinessStatus(this.name);

  static BusinessStatus? valueOf(String name) =>
      BusinessStatus.values.firstWhereOrNull((value) => value.name == name);
}
