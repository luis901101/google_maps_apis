// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_day.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SpecialDayCWProxy {
  SpecialDay date(Date? date);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SpecialDay(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SpecialDay(...).copyWith(id: 12, name: "My name")
  /// ```
  SpecialDay call({Date? date});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSpecialDay.copyWith(...)` or call `instanceOfSpecialDay.copyWith.fieldName(value)` for a single field.
class _$SpecialDayCWProxyImpl implements _$SpecialDayCWProxy {
  const _$SpecialDayCWProxyImpl(this._value);

  final SpecialDay _value;

  @override
  SpecialDay date(Date? date) => call(date: date);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SpecialDay(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SpecialDay(...).copyWith(id: 12, name: "My name")
  /// ```
  SpecialDay call({Object? date = const $CopyWithPlaceholder()}) {
    return SpecialDay(
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as Date?,
    );
  }
}

extension $SpecialDayCopyWith on SpecialDay {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSpecialDay.copyWith(...)` or `instanceOfSpecialDay.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SpecialDayCWProxy get copyWith => _$SpecialDayCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialDay _$SpecialDayFromJson(Map<String, dynamic> json) => SpecialDay(
  date: json['date'] == null
      ? null
      : Date.fromJson(json['date'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SpecialDayToJson(SpecialDay instance) =>
    <String, dynamic>{'date': ?instance.date};
