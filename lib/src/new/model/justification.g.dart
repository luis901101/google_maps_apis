// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'justification.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Justification] is to generate the code for a copyWith(...) function.
extension $JustificationCopyWithExtension on Justification {
  Justification copyWith({
    dynamic reviewJustification,
    dynamic businessAvailabilityAttributesJustification,
  }) {
    return Justification(
      reviewJustification: reviewJustification ?? this.reviewJustification,
      businessAvailabilityAttributesJustification:
          businessAvailabilityAttributesJustification ??
          this.businessAvailabilityAttributesJustification,
    );
  }
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
