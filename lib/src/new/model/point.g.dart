// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PointCWProxy {
  Point date(Date? date);

  Point truncated(bool? truncated);

  Point day(int? day);

  Point hour(int? hour);

  Point minute(int? minute);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Point(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Point(...).copyWith(id: 12, name: "My name")
  /// ```
  Point call({Date? date, bool? truncated, int? day, int? hour, int? minute});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPoint.copyWith(...)` or call `instanceOfPoint.copyWith.fieldName(value)` for a single field.
class _$PointCWProxyImpl implements _$PointCWProxy {
  const _$PointCWProxyImpl(this._value);

  final Point _value;

  @override
  Point date(Date? date) => call(date: date);

  @override
  Point truncated(bool? truncated) => call(truncated: truncated);

  @override
  Point day(int? day) => call(day: day);

  @override
  Point hour(int? hour) => call(hour: hour);

  @override
  Point minute(int? minute) => call(minute: minute);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Point(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Point(...).copyWith(id: 12, name: "My name")
  /// ```
  Point call({
    Object? date = const $CopyWithPlaceholder(),
    Object? truncated = const $CopyWithPlaceholder(),
    Object? day = const $CopyWithPlaceholder(),
    Object? hour = const $CopyWithPlaceholder(),
    Object? minute = const $CopyWithPlaceholder(),
  }) {
    return Point(
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as Date?,
      truncated: truncated == const $CopyWithPlaceholder()
          ? _value.truncated
          // ignore: cast_nullable_to_non_nullable
          : truncated as bool?,
      day: day == const $CopyWithPlaceholder()
          ? _value.day
          // ignore: cast_nullable_to_non_nullable
          : day as int?,
      hour: hour == const $CopyWithPlaceholder()
          ? _value.hour
          // ignore: cast_nullable_to_non_nullable
          : hour as int?,
      minute: minute == const $CopyWithPlaceholder()
          ? _value.minute
          // ignore: cast_nullable_to_non_nullable
          : minute as int?,
    );
  }
}

extension $PointCopyWith on Point {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPoint.copyWith(...)` or `instanceOfPoint.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PointCWProxy get copyWith => _$PointCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Point _$PointFromJson(Map<String, dynamic> json) => Point(
  date: json['date'] == null
      ? null
      : Date.fromJson(json['date'] as Map<String, dynamic>),
  truncated: json['truncated'] as bool?,
  day: (json['day'] as num?)?.toInt(),
  hour: (json['hour'] as num?)?.toInt(),
  minute: (json['minute'] as num?)?.toInt(),
);

Map<String, dynamic> _$PointToJson(Point instance) => <String, dynamic>{
  'date': ?instance.date,
  'truncated': ?instance.truncated,
  'day': ?instance.day,
  'hour': ?instance.hour,
  'minute': ?instance.minute,
};
