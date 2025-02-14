// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentOptionsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PaymentOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentOptions call({
    bool? acceptsCreditCards,
    bool? acceptsDebitCards,
    bool? acceptsCashOnly,
    bool? acceptsNfc,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaymentOptions.copyWith(...)`.
class _$PaymentOptionsCWProxyImpl implements _$PaymentOptionsCWProxy {
  const _$PaymentOptionsCWProxyImpl(this._value);

  final PaymentOptions _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PaymentOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentOptions call({
    Object? acceptsCreditCards = const $CopyWithPlaceholder(),
    Object? acceptsDebitCards = const $CopyWithPlaceholder(),
    Object? acceptsCashOnly = const $CopyWithPlaceholder(),
    Object? acceptsNfc = const $CopyWithPlaceholder(),
  }) {
    return PaymentOptions(
      acceptsCreditCards: acceptsCreditCards == const $CopyWithPlaceholder()
          ? _value.acceptsCreditCards
          // ignore: cast_nullable_to_non_nullable
          : acceptsCreditCards as bool?,
      acceptsDebitCards: acceptsDebitCards == const $CopyWithPlaceholder()
          ? _value.acceptsDebitCards
          // ignore: cast_nullable_to_non_nullable
          : acceptsDebitCards as bool?,
      acceptsCashOnly: acceptsCashOnly == const $CopyWithPlaceholder()
          ? _value.acceptsCashOnly
          // ignore: cast_nullable_to_non_nullable
          : acceptsCashOnly as bool?,
      acceptsNfc: acceptsNfc == const $CopyWithPlaceholder()
          ? _value.acceptsNfc
          // ignore: cast_nullable_to_non_nullable
          : acceptsNfc as bool?,
    );
  }
}

extension $PaymentOptionsCopyWith on PaymentOptions {
  /// Returns a callable class that can be used as follows: `instanceOfPaymentOptions.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentOptionsCWProxy get copyWith => _$PaymentOptionsCWProxyImpl(this);
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
      if (instance.acceptsCreditCards case final value?)
        'acceptsCreditCards': value,
      if (instance.acceptsDebitCards case final value?)
        'acceptsDebitCards': value,
      if (instance.acceptsCashOnly case final value?) 'acceptsCashOnly': value,
      if (instance.acceptsNfc case final value?) 'acceptsNfc': value,
    };
