// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formattable_text.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [FormattableText] is to generate the code for a copyWith(...) function.
extension $FormattableTextCopyWithExtension on FormattableText {
  FormattableText copyWith({String? text, List<StringRange>? matches}) {
    return FormattableText(
      text: text ?? this.text,
      matches:
          ((matches?.isNotEmpty ?? false) ? matches : null) ?? this.matches,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormattableText _$FormattableTextFromJson(Map<String, dynamic> json) =>
    FormattableText(
      text: json['text'] as String?,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => StringRange.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormattableTextToJson(FormattableText instance) =>
    <String, dynamic>{'text': ?instance.text, 'matches': ?instance.matches};
