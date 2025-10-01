// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'justification.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JustificationCWProxy {
  Justification reviewJustification(dynamic reviewJustification);

  Justification businessAvailabilityAttributesJustification(
    dynamic businessAvailabilityAttributesJustification,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Justification(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Justification(...).copyWith(id: 12, name: "My name")
  /// ```
  Justification call({
    dynamic reviewJustification,
    dynamic businessAvailabilityAttributesJustification,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfJustification.copyWith(...)` or call `instanceOfJustification.copyWith.fieldName(value)` for a single field.
class _$JustificationCWProxyImpl implements _$JustificationCWProxy {
  const _$JustificationCWProxyImpl(this._value);

  final Justification _value;

  @override
  Justification reviewJustification(dynamic reviewJustification) =>
      call(reviewJustification: reviewJustification);

  @override
  Justification businessAvailabilityAttributesJustification(
    dynamic businessAvailabilityAttributesJustification,
  ) => call(
    businessAvailabilityAttributesJustification:
        businessAvailabilityAttributesJustification,
  );

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Justification(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Justification(...).copyWith(id: 12, name: "My name")
  /// ```
  Justification call({
    Object? reviewJustification = const $CopyWithPlaceholder(),
    Object? businessAvailabilityAttributesJustification =
        const $CopyWithPlaceholder(),
  }) {
    return Justification(
      reviewJustification: reviewJustification == const $CopyWithPlaceholder()
          ? _value.reviewJustification
          // ignore: cast_nullable_to_non_nullable
          : reviewJustification as dynamic,
      businessAvailabilityAttributesJustification:
          businessAvailabilityAttributesJustification ==
              const $CopyWithPlaceholder()
          ? _value.businessAvailabilityAttributesJustification
          // ignore: cast_nullable_to_non_nullable
          : businessAvailabilityAttributesJustification as dynamic,
    );
  }
}

extension $JustificationCopyWith on Justification {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfJustification.copyWith(...)` or `instanceOfJustification.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$JustificationCWProxy get copyWith => _$JustificationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Justification _$JustificationFromJson(Map<String, dynamic> json) =>
    Justification(
      reviewJustification: json['reviewJustification'],
      businessAvailabilityAttributesJustification:
          json['businessAvailabilityAttributesJustification'],
    );

Map<String, dynamic> _$JustificationToJson(Justification instance) =>
    <String, dynamic>{
      'reviewJustification': ?instance.reviewJustification,
      'businessAvailabilityAttributesJustification':
          ?instance.businessAvailabilityAttributesJustification,
    };
