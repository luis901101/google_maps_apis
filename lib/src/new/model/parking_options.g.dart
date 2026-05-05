// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [ParkingOptions] is to generate the code for a copyWith(...) function.
extension $ParkingOptionsCopyWithExtension on ParkingOptions {
  ParkingOptions copyWith({
    bool? freeParkingLot,
    bool? paidParkingLot,
    bool? freeStreetParking,
    bool? paidStreetParking,
    bool? valetParking,
    bool? freeGarageParking,
    bool? paidGarageParking,
  }) {
    return ParkingOptions(
      freeParkingLot: freeParkingLot ?? this.freeParkingLot,
      paidParkingLot: paidParkingLot ?? this.paidParkingLot,
      freeStreetParking: freeStreetParking ?? this.freeStreetParking,
      paidStreetParking: paidStreetParking ?? this.paidStreetParking,
      valetParking: valetParking ?? this.valetParking,
      freeGarageParking: freeGarageParking ?? this.freeGarageParking,
      paidGarageParking: paidGarageParking ?? this.paidGarageParking,
    );
  }
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
