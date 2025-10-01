// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_range.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StringRangeCWProxy {
  StringRange startOffset(int? startOffset);

  StringRange endOffset(int? endOffset);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StringRange(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StringRange(...).copyWith(id: 12, name: "My name")
  /// ```
  StringRange call({int? startOffset, int? endOffset});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStringRange.copyWith(...)` or call `instanceOfStringRange.copyWith.fieldName(value)` for a single field.
class _$StringRangeCWProxyImpl implements _$StringRangeCWProxy {
  const _$StringRangeCWProxyImpl(this._value);

  final StringRange _value;

  @override
  StringRange startOffset(int? startOffset) => call(startOffset: startOffset);

  @override
  StringRange endOffset(int? endOffset) => call(endOffset: endOffset);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StringRange(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StringRange(...).copyWith(id: 12, name: "My name")
  /// ```
  StringRange call({
    Object? startOffset = const $CopyWithPlaceholder(),
    Object? endOffset = const $CopyWithPlaceholder(),
  }) {
    return StringRange(
      startOffset: startOffset == const $CopyWithPlaceholder()
          ? _value.startOffset
          // ignore: cast_nullable_to_non_nullable
          : startOffset as int?,
      endOffset: endOffset == const $CopyWithPlaceholder()
          ? _value.endOffset
          // ignore: cast_nullable_to_non_nullable
          : endOffset as int?,
    );
  }
}

extension $StringRangeCopyWith on StringRange {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStringRange.copyWith(...)` or `instanceOfStringRange.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StringRangeCWProxy get copyWith => _$StringRangeCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StringRange _$StringRangeFromJson(Map<String, dynamic> json) => StringRange(
  startOffset: (json['startOffset'] as num?)?.toInt(),
  endOffset: (json['endOffset'] as num?)?.toInt(),
);

Map<String, dynamic> _$StringRangeToJson(StringRange instance) =>
    <String, dynamic>{
      'startOffset': ?instance.startOffset,
      'endOffset': ?instance.endOffset,
    };
