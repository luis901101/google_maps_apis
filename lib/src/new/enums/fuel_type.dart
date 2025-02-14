import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Types of fuel.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#fueltype
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum FuelType {
  /// Unspecified fuel type.
  fuelTypeUnspecified('FUEL_TYPE_UNSPECIFIED'),

  /// Diesel fuel.
  diesel('DIESEL'),

  /// Regular unleaded.
  regularUnleaded('REGULAR_UNLEADED'),

  /// Midgrade.
  midgrade('MIDGRADE'),

  /// Premium.
  premium('PREMIUM'),

  /// SP 91.
  sp91('SP91'),

  /// SP 91 E10.
  sp91E10('SP91_E10'),

  /// SP 92.
  sp92('SP92'),

  /// SP 95.
  sp95('SP95'),

  /// SP95 E10.
  sp95E10('SP95_E10'),

  /// SP 98.
  sp98('SP98'),

  /// SP 99.
  sp99('SP99'),

  /// SP 100.
  sp100('SP100'),

  /// LPG.
  lpg('LPG'),

  /// E 80.
  e80('E80'),

  /// E 85.
  e85('E85'),

  /// Methane.
  methane('METHANE'),

  /// Bio-diesel.
  bioDiesel('BIO_DIESEL'),

  /// Truck diesel.
  truckDiesel('TRUCK_DIESEL'),
  ;

  final String name;
  const FuelType(this.name);

  static FuelType? valueOf(String name) =>
      FuelType.values.firstWhereOrNull((value) => value.name == name);
}
