// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PeriodCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Period(...).copyWith(id: 12, name: "My name")
  /// ````
  Period call({
    Point? open,
    Point? close,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPeriod.copyWith(...)`.
class _$PeriodCWProxyImpl implements _$PeriodCWProxy {
  const _$PeriodCWProxyImpl(this._value);

  final Period _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Period(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfPeriod.copyWith(...)`.
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
      if (instance.open case final value?) 'open': value,
      if (instance.close case final value?) 'close': value,
    };
