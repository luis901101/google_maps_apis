import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// A type used to identify the type of secondary hours.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#secondaryhourstype
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum SecondaryHoursType {
  /// Default value when secondary hour type is not specified.
  secondaryHoursTypeUnspecified('SECONDARY_HOURS_TYPE_UNSPECIFIED'),

  /// The drive-through hour for banks, restaurants, or pharmacies.
  driveThrough('DRIVE_THROUGH'),

  /// The happy hour.
  happyHour('HAPPY_HOUR'),

  /// The delivery hour.
  delivery('DELIVERY'),

  /// The takeout hour.
  takeout('TAKEOUT'),

  /// The kitchen hour.
  kitchen('KITCHEN'),

  /// The breakfast hour.
  breakfast('BREAKFAST'),

  /// The lunch hour.
  lunch('LUNCH'),

  /// The dinner hour.
  dinner('DINNER'),

  /// The brunch hour.
  brunch('BRUNCH'),

  /// The pickup hour.
  pickup('PICKUP'),

  /// The access hours for storage places.
  access('ACCESS'),

  /// The special hours for seniors.
  seniorHours('SENIOR_HOURS'),

  /// The online service hours.
  onlineServiceHours('ONLINE_SERVICE_HOURS'),
  ;

  final String name;
  const SecondaryHoursType(this.name);

  static SecondaryHoursType? valueOf(String name) =>
      SecondaryHoursType.values.firstWhereOrNull((value) => value.name == name);
}
