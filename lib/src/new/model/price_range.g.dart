// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_range.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PriceRangeCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PriceRange(...).copyWith(id: 12, name: "My name")
  /// ````
  PriceRange call({
    Money? startPrice,
    Money? endPrice,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPriceRange.copyWith(...)`.
class _$PriceRangeCWProxyImpl implements _$PriceRangeCWProxy {
  const _$PriceRangeCWProxyImpl(this._value);

  final PriceRange _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PriceRange(...).copyWith(id: 12, name: "My name")
  /// ````
  PriceRange call({
    Object? startPrice = const $CopyWithPlaceholder(),
    Object? endPrice = const $CopyWithPlaceholder(),
  }) {
    return PriceRange(
      startPrice: startPrice == const $CopyWithPlaceholder()
          ? _value.startPrice
          // ignore: cast_nullable_to_non_nullable
          : startPrice as Money?,
      endPrice: endPrice == const $CopyWithPlaceholder()
          ? _value.endPrice
          // ignore: cast_nullable_to_non_nullable
          : endPrice as Money?,
    );
  }
}

extension $PriceRangeCopyWith on PriceRange {
  /// Returns a callable class that can be used as follows: `instanceOfPriceRange.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$PriceRangeCWProxy get copyWith => _$PriceRangeCWProxyImpl(this);
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
      if (instance.startPrice case final value?) 'startPrice': value,
      if (instance.endPrice case final value?) 'endPrice': value,
    };
