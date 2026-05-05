// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Money] is to generate the code for a copyWith(...) function.
extension $MoneyCopyWithExtension on Money {
  Money copyWith({String? currencyCode, String? units, int? nanos}) {
    return Money(
      currencyCode: currencyCode ?? this.currencyCode,
      units: units ?? this.units,
      nanos: nanos ?? this.nanos,
    );
  }
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
