import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// Types of fuel.
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#fueltype
enum FuelType {
  /// Unspecified fuel type.
  @JsonValue('FUEL_TYPE_UNSPECIFIED')
  fuelTypeUnspecified('FUEL_TYPE_UNSPECIFIED'),

  /// Diesel fuel.
  @JsonValue('DIESEL')
  diesel('DIESEL'),

  /// Regular unleaded.
  @JsonValue('REGULAR_UNLEADED')
  regularUnleaded('REGULAR_UNLEADED'),

  /// Midgrade.
  @JsonValue('MIDGRADE')
  midgrade('MIDGRADE'),

  /// Premium.
  @JsonValue('PREMIUM')
  premium('PREMIUM'),

  /// SP 91.
  @JsonValue('SP91')
  sp91('SP91'),

  /// SP 91 E10.
  @JsonValue('SP91_E10')
  sp91E10('SP91_E10'),

  /// SP 92.
  @JsonValue('SP92')
  sp92('SP92'),

  /// SP 95.
  @JsonValue('SP95')
  sp95('SP95'),

  /// SP95 E10.
  @JsonValue('SP95_E10')
  sp95E10('SP95_E10'),

  /// SP 98.
  @JsonValue('SP98')
  sp98('SP98'),

  /// SP 99.
  @JsonValue('SP99')
  sp99('SP99'),

  /// SP 100.
  @JsonValue('SP100')
  sp100('SP100'),

  /// LPG.
  @JsonValue('LPG')
  lpg('LPG'),

  /// E 80.
  @JsonValue('E80')
  e80('E80'),

  /// E 85.
  @JsonValue('E85')
  e85('E85'),

  /// Methane.
  @JsonValue('METHANE')
  methane('METHANE'),

  /// Bio-diesel.
  @JsonValue('BIO_DIESEL')
  bioDiesel('BIO_DIESEL'),

  /// Truck diesel.
  @JsonValue('TRUCK_DIESEL')
  truckDiesel('TRUCK_DIESEL'),
  ;

  final String name;
  const FuelType(this.name);

  static FuelType? valueOf(String name) =>
      FuelType.values.firstWhereOrNull((value) => value.name == name);
}
