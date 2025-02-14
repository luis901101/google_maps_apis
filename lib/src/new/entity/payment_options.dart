import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_options.g.dart';

/// Payment options the place accepts.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#paymentoptions
@JsonSerializable()
@CopyWith()
class PaymentOptions extends Jsonable<PaymentOptions> {
  /// Place accepts credit cards as payment.
  final bool? acceptsCreditCards;

  /// Place accepts debit cards as payment.
  final bool? acceptsDebitCards;

  /// Place accepts cash only as payment. Places with this attribute may still accept other payment methods.
  final bool? acceptsCashOnly;

  /// Place accepts NFC payments.
  final bool? acceptsNfc;

  PaymentOptions({
    this.acceptsCreditCards,
    this.acceptsDebitCards,
    this.acceptsCashOnly,
    this.acceptsNfc,
  });

  factory PaymentOptions.fromJson(Map<String, dynamic> json) {
    return _$PaymentOptionsFromJson(json);
  }

  @override
  PaymentOptions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PaymentOptions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentOptionsToJson(this);
  }
}
