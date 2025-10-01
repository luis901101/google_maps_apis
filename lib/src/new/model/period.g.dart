// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PeriodCWProxy {
  Period open(Point? open);

  Period close(Point? close);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Period(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Period(...).copyWith(id: 12, name: "My name")
  /// ```
  Period call({Point? open, Point? close});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPeriod.copyWith(...)` or call `instanceOfPeriod.copyWith.fieldName(value)` for a single field.
class _$PeriodCWProxyImpl implements _$PeriodCWProxy {
  const _$PeriodCWProxyImpl(this._value);

  final Period _value;

  @override
  Period open(Point? open) => call(open: open);

  @override
  Period close(Point? close) => call(close: close);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Period(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Period(...).copyWith(id: 12, name: "My name")
  /// ```
  Period call({
    Object? open = const $CopyWithPlaceholder(),
    Object? close = const $CopyWithPlaceholder(),
  }) {
    return Period(
      open: open == const $CopyWithPlaceholder()
          ? _value.open
          // ignore: cast_nullable_to_non_nullable
          : open as Point?,
      close: close == const $CopyWithPlaceholder()
          ? _value.close
          // ignore: cast_nullable_to_non_nullable
          : close as Point?,
    );
  }
}

extension $PeriodCopyWith on Period {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPeriod.copyWith(...)` or `instanceOfPeriod.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PeriodCWProxy get copyWith => _$PeriodCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Period _$PeriodFromJson(Map<String, dynamic> json) => Period(
  open: json['open'] == null
      ? null
      : Point.fromJson(json['open'] as Map<String, dynamic>),
  close: json['close'] == null
      ? null
      : Point.fromJson(json['close'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
  'open': ?instance.open,
  'close': ?instance.close,
};
