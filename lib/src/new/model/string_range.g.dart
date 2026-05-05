// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_range.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [StringRange] is to generate the code for a copyWith(...) function.
extension $StringRangeCopyWithExtension on StringRange {
  StringRange copyWith({int? startOffset, int? endOffset}) {
    return StringRange(
      startOffset: startOffset ?? this.startOffset,
      endOffset: endOffset ?? this.endOffset,
    );
  }
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
