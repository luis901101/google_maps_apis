import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Business status for the place.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#businessstatus
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum BusinessStatus {
  /// Default value. This value is unused.
  businessStatusUnspecified('BUSINESS_STATUS_UNSPECIFIED'),

  /// The establishment is operational, not necessarily open now.
  operational('OPERATIONAL'),

  /// The establishment is temporarily closed.
  closedTemporarily('CLOSED_TEMPORARILY'),

  /// The establishment is permanently closed.
  closedPermanently('CLOSED_PERMANENTLY'),
  ;

  final String name;
  const BusinessStatus(this.name);

  static BusinessStatus? valueOf(String name) =>
      BusinessStatus.values.firstWhereOrNull((value) => value.name == name);
}
