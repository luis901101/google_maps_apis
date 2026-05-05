// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_text.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [LocalizedText] is to generate the code for a copyWith(...) function.
extension $LocalizedTextCopyWithExtension on LocalizedText {
  LocalizedText copyWith({String? text, String? languageCode}) {
    return LocalizedText(
      text: text ?? this.text,
      languageCode: languageCode ?? this.languageCode,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizedText _$LocalizedTextFromJson(Map<String, dynamic> json) =>
    LocalizedText(
      text: json['text'] as String?,
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$LocalizedTextToJson(LocalizedText instance) =>
    <String, dynamic>{
      'text': ?instance.text,
      'languageCode': ?instance.languageCode,
    };
