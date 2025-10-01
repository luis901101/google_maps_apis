import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'date.g.dart';

/// Represents a whole or partial calendar date, such as a birthday. The time
/// of day and time zone are either specified elsewhere or are insignificant.
/// The date is relative to the Gregorian Calendar.
/// This can represent one of the following:
///
/// - A full date, with non-zero year, month, and day values.
/// - A month and day, with a zero year (for example, an anniversary).
/// - A year on its own, with a zero month and a zero day.
/// - A year and month, with a zero day (for example, a credit card expiration date).
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#date
@JsonSerializable()
@CopyWith()
class Date extends Jsonable<Date> {
  /// Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
  int? year;

  /// Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
  int? month;

  /// Day of a month. Must be from 1 to 31 and valid for the year and month,
  /// or 0 to specify a year by itself or a year and month where the day isn't significant.
  int? day;

  Date({this.year, this.month, this.day});

  factory Date.fromJson(Map<String, dynamic> json) {
    return _$DateFromJson(json);
  }

  @override
  Date? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Date.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$DateToJson(this);
  }
}
