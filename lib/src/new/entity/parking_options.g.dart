// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParkingOptionsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ParkingOptions(...).copyWith(id: 12, name: "My name")
  /// ````
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfParkingOptions.copyWith(...)`.
class _$ParkingOptionsCWProxyImpl implements _$ParkingOptionsCWProxy {
  const _$ParkingOptionsCWProxyImpl(this._value);

  final ParkingOptions _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ParkingOptions(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfParkingOptions.copyWith(...)`.
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
      if (instance.freeParkingLot case final value?) 'freeParkingLot': value,
      if (instance.paidParkingLot case final value?) 'paidParkingLot': value,
      if (instance.freeStreetParking case final value?)
        'freeStreetParking': value,
      if (instance.paidStreetParking case final value?)
        'paidStreetParking': value,
      if (instance.valetParking case final value?) 'valetParking': value,
      if (instance.freeGarageParking case final value?)
        'freeGarageParking': value,
      if (instance.paidGarageParking case final value?)
        'paidGarageParking': value,
    };
