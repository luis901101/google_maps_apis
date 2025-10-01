// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_text.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LocalizedTextCWProxy {
  LocalizedText text(String? text);

  LocalizedText languageCode(String? languageCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LocalizedText(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LocalizedText(...).copyWith(id: 12, name: "My name")
  /// ```
  LocalizedText call({String? text, String? languageCode});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLocalizedText.copyWith(...)` or call `instanceOfLocalizedText.copyWith.fieldName(value)` for a single field.
class _$LocalizedTextCWProxyImpl implements _$LocalizedTextCWProxy {
  const _$LocalizedTextCWProxyImpl(this._value);

  final LocalizedText _value;

  @override
  LocalizedText text(String? text) => call(text: text);

  @override
  LocalizedText languageCode(String? languageCode) =>
      call(languageCode: languageCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LocalizedText(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LocalizedText(...).copyWith(id: 12, name: "My name")
  /// ```
  LocalizedText call({
    Object? text = const $CopyWithPlaceholder(),
    Object? languageCode = const $CopyWithPlaceholder(),
  }) {
    return LocalizedText(
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String?,
      languageCode: languageCode == const $CopyWithPlaceholder()
          ? _value.languageCode
          // ignore: cast_nullable_to_non_nullable
          : languageCode as String?,
    );
  }
}

extension $LocalizedTextCopyWith on LocalizedText {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLocalizedText.copyWith(...)` or `instanceOfLocalizedText.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LocalizedTextCWProxy get copyWith => _$LocalizedTextCWProxyImpl(this);
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
