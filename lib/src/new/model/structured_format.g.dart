// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_format.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StructuredFormatCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// StructuredFormat(...).copyWith(id: 12, name: "My name")
  /// ````
  StructuredFormat call({
    FormattableText? mainText,
    FormattableText? secondaryText,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStructuredFormat.copyWith(...)`.
class _$StructuredFormatCWProxyImpl implements _$StructuredFormatCWProxy {
  const _$StructuredFormatCWProxyImpl(this._value);

  final StructuredFormat _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// StructuredFormat(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfStructuredFormat.copyWith(...)`.
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
              json['secondaryText'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StructuredFormatToJson(StructuredFormat instance) =>
    <String, dynamic>{
      if (instance.mainText case final value?) 'mainText': value,
      if (instance.secondaryText case final value?) 'secondaryText': value,
    };
