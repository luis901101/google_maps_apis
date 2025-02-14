// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'justification.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JustificationCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Justification(...).copyWith(id: 12, name: "My name")
  /// ````
  Justification call({
    dynamic reviewJustification,
    dynamic businessAvailabilityAttributesJustification,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfJustification.copyWith(...)`.
class _$JustificationCWProxyImpl implements _$JustificationCWProxy {
  const _$JustificationCWProxyImpl(this._value);

  final Justification _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Justification(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfJustification.copyWith(...)`.
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
      if (instance.reviewJustification case final value?)
        'reviewJustification': value,
      if (instance.businessAvailabilityAttributesJustification
          case final value?)
        'businessAvailabilityAttributesJustification': value,
    };
