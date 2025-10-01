// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MoneyCWProxy {
  Money currencyCode(String? currencyCode);

  Money units(String? units);

  Money nanos(int? nanos);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Money(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Money(...).copyWith(id: 12, name: "My name")
  /// ```
  Money call({String? currencyCode, String? units, int? nanos});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMoney.copyWith(...)` or call `instanceOfMoney.copyWith.fieldName(value)` for a single field.
class _$MoneyCWProxyImpl implements _$MoneyCWProxy {
  const _$MoneyCWProxyImpl(this._value);

  final Money _value;

  @override
  Money currencyCode(String? currencyCode) => call(currencyCode: currencyCode);

  @override
  Money units(String? units) => call(units: units);

  @override
  Money nanos(int? nanos) => call(nanos: nanos);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Money(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Money(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMoney.copyWith(...)` or `instanceOfMoney.copyWith.fieldName(...)`.
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
  'currencyCode': ?instance.currencyCode,
  'units': ?instance.units,
  'nanos': ?instance.nanos,
};
