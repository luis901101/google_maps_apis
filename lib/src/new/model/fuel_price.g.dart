// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_price.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [FuelPrice] is to generate the code for a copyWith(...) function.
extension $FuelPriceCopyWithExtension on FuelPrice {
  FuelPrice copyWith({FuelType? type, Money? price, DateTime? updateTime}) {
    return FuelPrice(
      type: type ?? this.type,
      price: price ?? this.price,
      updateTime: updateTime ?? this.updateTime,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuelPrice _$FuelPriceFromJson(Map<String, dynamic> json) => FuelPrice(
  type: $enumDecodeNullable(
    _$FuelTypeEnumMap,
    json['type'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  price: json['price'] == null
      ? null
      : Money.fromJson(json['price'] as Map<String, dynamic>),
  updateTime: json['updateTime'] == null
      ? null
      : DateTime.parse(json['updateTime'] as String),
);

Map<String, dynamic> _$FuelPriceToJson(FuelPrice instance) => <String, dynamic>{
  'type': ?_$FuelTypeEnumMap[instance.type],
  'price': ?instance.price,
  'updateTime': ?instance.updateTime?.toIso8601String(),
};

const _$FuelTypeEnumMap = {
  FuelType.fuelTypeUnspecified: 'FUEL_TYPE_UNSPECIFIED',
  FuelType.diesel: 'DIESEL',
  FuelType.regularUnleaded: 'REGULAR_UNLEADED',
  FuelType.midgrade: 'MIDGRADE',
  FuelType.premium: 'PREMIUM',
  FuelType.sp91: 'SP91',
  FuelType.sp91E10: 'SP91_E10',
  FuelType.sp92: 'SP92',
  FuelType.sp95: 'SP95',
  FuelType.sp95E10: 'SP95_E10',
  FuelType.sp98: 'SP98',
  FuelType.sp99: 'SP99',
  FuelType.sp100: 'SP100',
  FuelType.lpg: 'LPG',
  FuelType.e80: 'E80',
  FuelType.e85: 'E85',
  FuelType.methane: 'METHANE',
  FuelType.bioDiesel: 'BIO_DIESEL',
  FuelType.truckDiesel: 'TRUCK_DIESEL',
};
