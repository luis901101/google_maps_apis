// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_format.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StructuredFormatCWProxy {
  StructuredFormat mainText(FormattableText? mainText);

  StructuredFormat secondaryText(FormattableText? secondaryText);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StructuredFormat(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StructuredFormat(...).copyWith(id: 12, name: "My name")
  /// ```
  StructuredFormat call({
    FormattableText? mainText,
    FormattableText? secondaryText,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStructuredFormat.copyWith(...)` or call `instanceOfStructuredFormat.copyWith.fieldName(value)` for a single field.
class _$StructuredFormatCWProxyImpl implements _$StructuredFormatCWProxy {
  const _$StructuredFormatCWProxyImpl(this._value);

  final StructuredFormat _value;

  @override
  StructuredFormat mainText(FormattableText? mainText) =>
      call(mainText: mainText);

  @override
  StructuredFormat secondaryText(FormattableText? secondaryText) =>
      call(secondaryText: secondaryText);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StructuredFormat(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StructuredFormat(...).copyWith(id: 12, name: "My name")
  /// ```
  StructuredFormat call({
    Object? mainText = const $CopyWithPlaceholder(),
    Object? secondaryText = const $CopyWithPlaceholder(),
  }) {
    return StructuredFormat(
      mainText: mainText == const $CopyWithPlaceholder()
          ? _value.mainText
          // ignore: cast_nullable_to_non_nullable
          : mainText as FormattableText?,
      secondaryText: secondaryText == const $CopyWithPlaceholder()
          ? _value.secondaryText
          // ignore: cast_nullable_to_non_nullable
          : secondaryText as FormattableText?,
    );
  }
}

extension $StructuredFormatCopyWith on StructuredFormat {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStructuredFormat.copyWith(...)` or `instanceOfStructuredFormat.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StructuredFormatCWProxy get copyWith => _$StructuredFormatCWProxyImpl(this);
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
