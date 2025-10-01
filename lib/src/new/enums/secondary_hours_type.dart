import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// A type used to identify the type of secondary hours.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#secondaryhourstype
enum SecondaryHoursType {
  /// Default value when secondary hour type is not specified.
  @JsonValue('SECONDARY_HOURS_TYPE_UNSPECIFIED')
  secondaryHoursTypeUnspecified('SECONDARY_HOURS_TYPE_UNSPECIFIED'),

  /// The drive-through hour for banks, restaurants, or pharmacies.
  @JsonValue('DRIVE_THROUGH')
  driveThrough('DRIVE_THROUGH'),

  /// The happy hour.
  @JsonValue('HAPPY_HOUR')
  happyHour('HAPPY_HOUR'),

  /// The delivery hour.
  @JsonValue('DELIVERY')
  delivery('DELIVERY'),

  /// The takeout hour.
  @JsonValue('TAKEOUT')
  takeout('TAKEOUT'),

  /// The kitchen hour.
  @JsonValue('KITCHEN')
  kitchen('KITCHEN'),

  /// The breakfast hour.
  @JsonValue('BREAKFAST')
  breakfast('BREAKFAST'),

  /// The lunch hour.
  @JsonValue('LUNCH')
  lunch('LUNCH'),

  /// The dinner hour.
  @JsonValue('DINNER')
  dinner('DINNER'),

  /// The brunch hour.
  @JsonValue('BRUNCH')
  brunch('BRUNCH'),

  /// The pickup hour.
  @JsonValue('PICKUP')
  pickup('PICKUP'),

  /// The access hours for storage places.
  @JsonValue('ACCESS')
  access('ACCESS'),

  /// The special hours for seniors.
  @JsonValue('SENIOR_HOURS')
  seniorHours('SENIOR_HOURS'),

  /// The online service hours.
  @JsonValue('ONLINE_SERVICE_HOURS')
  onlineServiceHours('ONLINE_SERVICE_HOURS');

  final String name;
  const SecondaryHoursType(this.name);

  static SecondaryHoursType? valueOf(String name) =>
      SecondaryHoursType.values.firstWhereOrNull((value) => value.name == name);
}
