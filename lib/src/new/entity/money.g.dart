// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MoneyCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Money(...).copyWith(id: 12, name: "My name")
  /// ````
  Money call({
    String? currencyCode,
    String? units,
    int? nanos,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMoney.copyWith(...)`.
class _$MoneyCWProxyImpl implements _$MoneyCWProxy {
  const _$MoneyCWProxyImpl(this._value);

  final Money _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Money(...).copyWith(id: 12, name: "My name")
  /// ````
  Money call({
    Object? currencyCode = const $CopyWithPlaceholder(),
    Object? units = const $CopyWithPlaceholder(),
    Object? nanos = const $CopyWithPlaceholder(),
  }) {
    return Money(
      currencyCode: currencyCode == const $CopyWithPlaceholder()
          ? _value.currencyCode
          // ignore: cast_nullable_to_non_nullable
          : currencyCode as String?,
      units: units == const $CopyWithPlaceholder()
          ? _value.units
          // ignore: cast_nullable_to_non_nullable
          : units as String?,
      nanos: nanos == const $CopyWithPlaceholder()
          ? _value.nanos
          // ignore: cast_nullable_to_non_nullable
          : nanos as int?,
    );
  }
}

extension $MoneyCopyWith on Money {
  /// Returns a callable class that can be used as follows: `instanceOfMoney.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$MoneyCWProxy get copyWith => _$MoneyCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Money _$MoneyFromJson(Map<String, dynamic> json) => Money(
      currencyCode: json['currencyCode'] as String?,
      units: json['units'] as String?,
      nanos: (json['nanos'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MoneyToJson(Money instance) => <String, dynamic>{
      if (instance.currencyCode case final value?) 'currencyCode': value,
      if (instance.units case final value?) 'units': value,
      if (instance.nanos case final value?) 'nanos': value,
    };
