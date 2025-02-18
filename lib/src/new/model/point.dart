import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/date.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'point.g.dart';

/// Status changing points.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#point
@JsonSerializable()
@CopyWith()
class Point extends Jsonable<Point> {
  /// Date in the local timezone for the place.
  final Date? date;

  /// Whether or not this endpoint was truncated. Truncation occurs when the real
  /// hours are outside the times we are willing to return hours between, so we
  /// truncate the hours back to these boundaries. This ensures that at most
  /// 24 * 7 hours from midnight of the day of the request are returned.
  final bool? truncated;

  /// A day of the week, as an integer in the range 0-6. 0 is Sunday, 1 is Monday, etc.
  final int? day;

  /// The hour in 24 hour format. Ranges from 0 to 23.
  final int? hour;

  /// The minute. Ranges from 0 to 59.
  final int? minute;

  Point({
    this.date,
    this.truncated,
    this.day,
    this.hour,
    this.minute,
  });

  factory Point.fromJson(Map<String, dynamic> json) {
    return _$PointFromJson(json);
  }

  @override
  Point? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Point.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PointToJson(this);
  }
}
