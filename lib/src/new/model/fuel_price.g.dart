// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuel_price.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FuelPriceCWProxy {
  FuelPrice type(FuelType? type);

  FuelPrice price(Money? price);

  FuelPrice updateTime(DateTime? updateTime);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FuelPrice(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FuelPrice(...).copyWith(id: 12, name: "My name")
  /// ```
  FuelPrice call({FuelType? type, Money? price, DateTime? updateTime});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfFuelPrice.copyWith(...)` or call `instanceOfFuelPrice.copyWith.fieldName(value)` for a single field.
class _$FuelPriceCWProxyImpl implements _$FuelPriceCWProxy {
  const _$FuelPriceCWProxyImpl(this._value);

  final FuelPrice _value;

  @override
  FuelPrice type(FuelType? type) => call(type: type);

  @override
  FuelPrice price(Money? price) => call(price: price);

  @override
  FuelPrice updateTime(DateTime? updateTime) => call(updateTime: updateTime);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FuelPrice(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FuelPrice(...).copyWith(id: 12, name: "My name")
  /// ```
  FuelPrice call({
    Object? type = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? updateTime = const $CopyWithPlaceholder(),
  }) {
    return FuelPrice(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as FuelType?,
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as Money?,
      updateTime: updateTime == const $CopyWithPlaceholder()
          ? _value.updateTime
          // ignore: cast_nullable_to_non_nullable
          : updateTime as DateTime?,
    );
  }
}

extension $FuelPriceCopyWith on FuelPrice {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfFuelPrice.copyWith(...)` or `instanceOfFuelPrice.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FuelPriceCWProxy get copyWith => _$FuelPriceCWProxyImpl(this);
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
