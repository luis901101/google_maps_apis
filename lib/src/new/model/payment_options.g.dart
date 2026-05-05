// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [PaymentOptions] is to generate the code for a copyWith(...) function.
extension $PaymentOptionsCopyWithExtension on PaymentOptions {
  PaymentOptions copyWith({
    bool? acceptsCreditCards,
    bool? acceptsDebitCards,
    bool? acceptsCashOnly,
    bool? acceptsNfc,
  }) {
    return PaymentOptions(
      acceptsCreditCards: acceptsCreditCards ?? this.acceptsCreditCards,
      acceptsDebitCards: acceptsDebitCards ?? this.acceptsDebitCards,
      acceptsCashOnly: acceptsCashOnly ?? this.acceptsCashOnly,
      acceptsNfc: acceptsNfc ?? this.acceptsNfc,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentOptions _$PaymentOptionsFromJson(Map<String, dynamic> json) =>
    PaymentOptions(
      acceptsCreditCards: json['acceptsCreditCards'] as bool?,
      acceptsDebitCards: json['acceptsDebitCards'] as bool?,
      acceptsCashOnly: json['acceptsCashOnly'] as bool?,
      acceptsNfc: json['acceptsNfc'] as bool?,
    );

Map<String, dynamic> _$PaymentOptionsToJson(PaymentOptions instance) =>
    <String, dynamic>{
      'acceptsCreditCards': ?instance.acceptsCreditCards,
      'acceptsDebitCards': ?instance.acceptsDebitCards,
      'acceptsCashOnly': ?instance.acceptsCashOnly,
      'acceptsNfc': ?instance.acceptsNfc,
    };
