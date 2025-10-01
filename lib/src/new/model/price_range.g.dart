// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_range.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PriceRangeCWProxy {
  PriceRange startPrice(Money? startPrice);

  PriceRange endPrice(Money? endPrice);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PriceRange(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PriceRange(...).copyWith(id: 12, name: "My name")
  /// ```
  PriceRange call({Money? startPrice, Money? endPrice});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPriceRange.copyWith(...)` or call `instanceOfPriceRange.copyWith.fieldName(value)` for a single field.
class _$PriceRangeCWProxyImpl implements _$PriceRangeCWProxy {
  const _$PriceRangeCWProxyImpl(this._value);

  final PriceRange _value;

  @override
  PriceRange startPrice(Money? startPrice) => call(startPrice: startPrice);

  @override
  PriceRange endPrice(Money? endPrice) => call(endPrice: endPrice);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PriceRange(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PriceRange(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPriceRange.copyWith(...)` or `instanceOfPriceRange.copyWith.fieldName(...)`.
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
      'startPrice': ?instance.startPrice,
      'endPrice': ?instance.endPrice,
    };
