import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'string_range.g.dart';

/// Identifies a substring within a given text.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/autocomplete#stringrange
@JsonSerializable()
@CopyWith()
class StringRange extends Jsonable<StringRange> {
  /// Zero-based offset of the first Unicode character of the string (inclusive).
  final int? startOffset;

  /// Zero-based offset of the last Unicode character (exclusive).
  final int? endOffset;
  StringRange({
    this.startOffset,
    this.endOffset,
  });

  factory StringRange.fromJson(Map<String, dynamic> json) {
    return _$StringRangeFromJson(json);
  }

  @override
  StringRange? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? StringRange.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$StringRangeToJson(this);
  }
}
