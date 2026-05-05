// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_range.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [PriceRange] is to generate the code for a copyWith(...) function.
extension $PriceRangeCopyWithExtension on PriceRange {
  PriceRange copyWith({Money? startPrice, Money? endPrice}) {
    return PriceRange(
      startPrice: startPrice ?? this.startPrice,
      endPrice: endPrice ?? this.endPrice,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceRange _$PriceRangeFromJson(Map<String, dynamic> json) => PriceRange(
  startPrice: json['startPrice'] == null
      ? null
      : Money.fromJson(json['startPrice'] as Map<String, dynamic>),
  endPrice: json['endPrice'] == null
      ? null
      : Money.fromJson(json['endPrice'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PriceRangeToJson(PriceRange instance) =>
    <String, dynamic>{
      'startPrice': ?instance.startPrice,
      'endPrice': ?instance.endPrice,
    };
