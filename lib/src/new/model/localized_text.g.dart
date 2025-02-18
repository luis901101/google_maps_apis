// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_text.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LocalizedTextCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// LocalizedText(...).copyWith(id: 12, name: "My name")
  /// ````
  LocalizedText call({
    String? text,
    String? languageCode,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLocalizedText.copyWith(...)`.
class _$LocalizedTextCWProxyImpl implements _$LocalizedTextCWProxy {
  const _$LocalizedTextCWProxyImpl(this._value);

  final LocalizedText _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// LocalizedText(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfLocalizedText.copyWith(...)`.
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
      if (instance.text case final value?) 'text': value,
      if (instance.languageCode case final value?) 'languageCode': value,
    };
