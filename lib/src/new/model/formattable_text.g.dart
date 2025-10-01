// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formattable_text.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FormattableTextCWProxy {
  FormattableText text(String? text);

  FormattableText matches(List<StringRange>? matches);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FormattableText(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FormattableText(...).copyWith(id: 12, name: "My name")
  /// ```
  FormattableText call({String? text, List<StringRange>? matches});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfFormattableText.copyWith(...)` or call `instanceOfFormattableText.copyWith.fieldName(value)` for a single field.
class _$FormattableTextCWProxyImpl implements _$FormattableTextCWProxy {
  const _$FormattableTextCWProxyImpl(this._value);

  final FormattableText _value;

  @override
  FormattableText text(String? text) => call(text: text);

  @override
  FormattableText matches(List<StringRange>? matches) => call(matches: matches);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FormattableText(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FormattableText(...).copyWith(id: 12, name: "My name")
  /// ```
  FormattableText call({
    Object? text = const $CopyWithPlaceholder(),
    Object? matches = const $CopyWithPlaceholder(),
  }) {
    return FormattableText(
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String?,
      matches: matches == const $CopyWithPlaceholder()
          ? _value.matches
          // ignore: cast_nullable_to_non_nullable
          : matches as List<StringRange>?,
    );
  }
}

extension $FormattableTextCopyWith on FormattableText {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfFormattableText.copyWith(...)` or `instanceOfFormattableText.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FormattableTextCWProxy get copyWith => _$FormattableTextCWProxyImpl(this);
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
