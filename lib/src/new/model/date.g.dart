// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DateCWProxy {
  Date year(int? year);

  Date month(int? month);

  Date day(int? day);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Date(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Date(...).copyWith(id: 12, name: "My name")
  /// ```
  Date call({int? year, int? month, int? day});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDate.copyWith(...)` or call `instanceOfDate.copyWith.fieldName(value)` for a single field.
class _$DateCWProxyImpl implements _$DateCWProxy {
  const _$DateCWProxyImpl(this._value);

  final Date _value;

  @override
  Date year(int? year) => call(year: year);

  @override
  Date month(int? month) => call(month: month);

  @override
  Date day(int? day) => call(day: day);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Date(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Date(...).copyWith(id: 12, name: "My name")
  /// ```
  Date call({
    Object? year = const $CopyWithPlaceholder(),
    Object? month = const $CopyWithPlaceholder(),
    Object? day = const $CopyWithPlaceholder(),
  }) {
    return Date(
      year: year == const $CopyWithPlaceholder()
          ? _value.year
          // ignore: cast_nullable_to_non_nullable
          : year as int?,
      month: month == const $CopyWithPlaceholder()
          ? _value.month
          // ignore: cast_nullable_to_non_nullable
          : month as int?,
      day: day == const $CopyWithPlaceholder()
          ? _value.day
          // ignore: cast_nullable_to_non_nullable
          : day as int?,
    );
  }
}

extension $DateCopyWith on Date {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDate.copyWith(...)` or `instanceOfDate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DateCWProxy get copyWith => _$DateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Date _$DateFromJson(Map<String, dynamic> json) => Date(
  year: (json['year'] as num?)?.toInt(),
  month: (json['month'] as num?)?.toInt(),
  day: (json['day'] as num?)?.toInt(),
);

Map<String, dynamic> _$DateToJson(Date instance) => <String, dynamic>{
  'year': ?instance.year,
  'month': ?instance.month,
  'day': ?instance.day,
};
