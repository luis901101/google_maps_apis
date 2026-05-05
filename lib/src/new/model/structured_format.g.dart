// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_format.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [StructuredFormat] is to generate the code for a copyWith(...) function.
extension $StructuredFormatCopyWithExtension on StructuredFormat {
  StructuredFormat copyWith({
    FormattableText? mainText,
    FormattableText? secondaryText,
  }) {
    return StructuredFormat(
      mainText: mainText ?? this.mainText,
      secondaryText: secondaryText ?? this.secondaryText,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructuredFormat _$StructuredFormatFromJson(Map<String, dynamic> json) =>
    StructuredFormat(
      mainText: json['mainText'] == null
          ? null
          : FormattableText.fromJson(json['mainText'] as Map<String, dynamic>),
      secondaryText: json['secondaryText'] == null
          ? null
          : FormattableText.fromJson(
              json['secondaryText'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$StructuredFormatToJson(StructuredFormat instance) =>
    <String, dynamic>{
      'mainText': ?instance.mainText,
      'secondaryText': ?instance.secondaryText,
    };
