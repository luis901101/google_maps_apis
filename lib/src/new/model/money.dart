import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'money.g.dart';

/// Represents an amount of money with its currency type.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#money
@JsonSerializable()
@CopyWith()
class Money extends Jsonable<Money> {
  /// The three-letter currency code defined in ISO 4217.
  final String? currencyCode;

  /// The whole units of the amount. For example if currencyCode is "USD", then
  /// 1 unit is one US dollar.
  final String? units;

  /// Number of nano (10^-9) units of the amount. The value must be between
  /// -999,999,999 and +999,999,999 inclusive. If units is positive, nanos must
  /// be positive or zero. If units is zero, nanos can be positive, zero, or negative.
  /// If units is negative, nanos must be negative or zero. For example $-1.75
  /// is represented as units=-1 and nanos=-750,000,000.
  final int? nanos;

  Money({this.currencyCode, this.units, this.nanos});

  factory Money.fromJson(Map<String, dynamic> json) {
    return _$MoneyFromJson(json);
  }

  @override
  Money? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Money.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$MoneyToJson(this);
  }
}
