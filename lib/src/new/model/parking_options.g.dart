// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParkingOptionsCWProxy {
  ParkingOptions freeParkingLot(bool? freeParkingLot);

  ParkingOptions paidParkingLot(bool? paidParkingLot);

  ParkingOptions freeStreetParking(bool? freeStreetParking);

  ParkingOptions paidStreetParking(bool? paidStreetParking);

  ParkingOptions valetParking(bool? valetParking);

  ParkingOptions freeGarageParking(bool? freeGarageParking);

  ParkingOptions paidGarageParking(bool? paidGarageParking);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ParkingOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ParkingOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  ParkingOptions call({
    bool? freeParkingLot,
    bool? paidParkingLot,
    bool? freeStreetParking,
    bool? paidStreetParking,
    bool? valetParking,
    bool? freeGarageParking,
    bool? paidGarageParking,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfParkingOptions.copyWith(...)` or call `instanceOfParkingOptions.copyWith.fieldName(value)` for a single field.
class _$ParkingOptionsCWProxyImpl implements _$ParkingOptionsCWProxy {
  const _$ParkingOptionsCWProxyImpl(this._value);

  final ParkingOptions _value;

  @override
  ParkingOptions freeParkingLot(bool? freeParkingLot) =>
      call(freeParkingLot: freeParkingLot);

  @override
  ParkingOptions paidParkingLot(bool? paidParkingLot) =>
      call(paidParkingLot: paidParkingLot);

  @override
  ParkingOptions freeStreetParking(bool? freeStreetParking) =>
      call(freeStreetParking: freeStreetParking);

  @override
  ParkingOptions paidStreetParking(bool? paidStreetParking) =>
      call(paidStreetParking: paidStreetParking);

  @override
  ParkingOptions valetParking(bool? valetParking) =>
      call(valetParking: valetParking);

  @override
  ParkingOptions freeGarageParking(bool? freeGarageParking) =>
      call(freeGarageParking: freeGarageParking);

  @override
  ParkingOptions paidGarageParking(bool? paidGarageParking) =>
      call(paidGarageParking: paidGarageParking);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ParkingOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ParkingOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  ParkingOptions call({
    Object? freeParkingLot = const $CopyWithPlaceholder(),
    Object? paidParkingLot = const $CopyWithPlaceholder(),
    Object? freeStreetParking = const $CopyWithPlaceholder(),
    Object? paidStreetParking = const $CopyWithPlaceholder(),
    Object? valetParking = const $CopyWithPlaceholder(),
    Object? freeGarageParking = const $CopyWithPlaceholder(),
    Object? paidGarageParking = const $CopyWithPlaceholder(),
  }) {
    return ParkingOptions(
      freeParkingLot: freeParkingLot == const $CopyWithPlaceholder()
          ? _value.freeParkingLot
          // ignore: cast_nullable_to_non_nullable
          : freeParkingLot as bool?,
      paidParkingLot: paidParkingLot == const $CopyWithPlaceholder()
          ? _value.paidParkingLot
          // ignore: cast_nullable_to_non_nullable
          : paidParkingLot as bool?,
      freeStreetParking: freeStreetParking == const $CopyWithPlaceholder()
          ? _value.freeStreetParking
          // ignore: cast_nullable_to_non_nullable
          : freeStreetParking as bool?,
      paidStreetParking: paidStreetParking == const $CopyWithPlaceholder()
          ? _value.paidStreetParking
          // ignore: cast_nullable_to_non_nullable
          : paidStreetParking as bool?,
      valetParking: valetParking == const $CopyWithPlaceholder()
          ? _value.valetParking
          // ignore: cast_nullable_to_non_nullable
          : valetParking as bool?,
      freeGarageParking: freeGarageParking == const $CopyWithPlaceholder()
          ? _value.freeGarageParking
          // ignore: cast_nullable_to_non_nullable
          : freeGarageParking as bool?,
      paidGarageParking: paidGarageParking == const $CopyWithPlaceholder()
          ? _value.paidGarageParking
          // ignore: cast_nullable_to_non_nullable
          : paidGarageParking as bool?,
    );
  }
}

extension $ParkingOptionsCopyWith on ParkingOptions {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfParkingOptions.copyWith(...)` or `instanceOfParkingOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ParkingOptionsCWProxy get copyWith => _$ParkingOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParkingOptions _$ParkingOptionsFromJson(Map<String, dynamic> json) =>
    ParkingOptions(
      freeParkingLot: json['freeParkingLot'] as bool?,
      paidParkingLot: json['paidParkingLot'] as bool?,
      freeStreetParking: json['freeStreetParking'] as bool?,
      paidStreetParking: json['paidStreetParking'] as bool?,
      valetParking: json['valetParking'] as bool?,
      freeGarageParking: json['freeGarageParking'] as bool?,
      paidGarageParking: json['paidGarageParking'] as bool?,
    );

Map<String, dynamic> _$ParkingOptionsToJson(ParkingOptions instance) =>
    <String, dynamic>{
      'freeParkingLot': ?instance.freeParkingLot,
      'paidParkingLot': ?instance.paidParkingLot,
      'freeStreetParking': ?instance.freeStreetParking,
      'paidStreetParking': ?instance.paidStreetParking,
      'valetParking': ?instance.valetParking,
      'freeGarageParking': ?instance.freeGarageParking,
      'paidGarageParking': ?instance.paidGarageParking,
    };
