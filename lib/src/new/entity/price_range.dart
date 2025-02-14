import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/entity/money.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'price_range.g.dart';

/// The price range associated with a Place. [endPrice] could be unset, which
/// indicates a range without upper bound (e.g. "More than $100").
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#pricerange
@JsonSerializable()
@CopyWith()
class PriceRange extends Jsonable<PriceRange> {
  /// The low end of the price range (inclusive). Price should be at or above this amount.
  final Money? startPrice;

  /// The high end of the price range (exclusive). Price should be lower than this amount.
  final Money? endPrice;

  PriceRange({
    this.startPrice,
    this.endPrice,
  });

  factory PriceRange.fromJson(Map<String, dynamic> json) {
    return _$PriceRangeFromJson(json);
  }

  @override
  PriceRange? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PriceRange.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PriceRangeToJson(this);
  }
}
