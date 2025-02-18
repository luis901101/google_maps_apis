// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formattable_text.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FormattableTextCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// FormattableText(...).copyWith(id: 12, name: "My name")
  /// ````
  FormattableText call({
    String? text,
    List<StringRange>? matches,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFormattableText.copyWith(...)`.
class _$FormattableTextCWProxyImpl implements _$FormattableTextCWProxy {
  const _$FormattableTextCWProxyImpl(this._value);

  final FormattableText _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// FormattableText(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfFormattableText.copyWith(...)`.
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
    <String, dynamic>{
      if (instance.text case final value?) 'text': value,
      if (instance.matches case final value?) 'matches': value,
    };
