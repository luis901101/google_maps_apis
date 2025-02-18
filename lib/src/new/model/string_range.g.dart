// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_range.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StringRangeCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// StringRange(...).copyWith(id: 12, name: "My name")
  /// ````
  StringRange call({
    int? startOffset,
    int? endOffset,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStringRange.copyWith(...)`.
class _$StringRangeCWProxyImpl implements _$StringRangeCWProxy {
  const _$StringRangeCWProxyImpl(this._value);

  final StringRange _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// StringRange(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfStringRange.copyWith(...)`.
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
      if (instance.startOffset case final value?) 'startOffset': value,
      if (instance.endOffset case final value?) 'endOffset': value,
    };
