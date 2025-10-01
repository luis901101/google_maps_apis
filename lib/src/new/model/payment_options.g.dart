// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentOptionsCWProxy {
  PaymentOptions acceptsCreditCards(bool? acceptsCreditCards);

  PaymentOptions acceptsDebitCards(bool? acceptsDebitCards);

  PaymentOptions acceptsCashOnly(bool? acceptsCashOnly);

  PaymentOptions acceptsNfc(bool? acceptsNfc);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentOptions call({
    bool? acceptsCreditCards,
    bool? acceptsDebitCards,
    bool? acceptsCashOnly,
    bool? acceptsNfc,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentOptions.copyWith(...)` or call `instanceOfPaymentOptions.copyWith.fieldName(value)` for a single field.
class _$PaymentOptionsCWProxyImpl implements _$PaymentOptionsCWProxy {
  const _$PaymentOptionsCWProxyImpl(this._value);

  final PaymentOptions _value;

  @override
  PaymentOptions acceptsCreditCards(bool? acceptsCreditCards) =>
      call(acceptsCreditCards: acceptsCreditCards);

  @override
  PaymentOptions acceptsDebitCards(bool? acceptsDebitCards) =>
      call(acceptsDebitCards: acceptsDebitCards);

  @override
  PaymentOptions acceptsCashOnly(bool? acceptsCashOnly) =>
      call(acceptsCashOnly: acceptsCashOnly);

  @override
  PaymentOptions acceptsNfc(bool? acceptsNfc) => call(acceptsNfc: acceptsNfc);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentOptions(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentOptions.copyWith(...)` or `instanceOfPaymentOptions.copyWith.fieldName(...)`.
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
      'acceptsCreditCards': ?instance.acceptsCreditCards,
      'acceptsDebitCards': ?instance.acceptsDebitCards,
      'acceptsCashOnly': ?instance.acceptsCashOnly,
      'acceptsNfc': ?instance.acceptsNfc,
    };
