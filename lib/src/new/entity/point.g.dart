// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PointCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Point(...).copyWith(id: 12, name: "My name")
  /// ````
  Point call({
    Date? date,
    bool? truncated,
    int? day,
    int? hour,
    int? minute,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPoint.copyWith(...)`.
class _$PointCWProxyImpl implements _$PointCWProxy {
  const _$PointCWProxyImpl(this._value);

  final Point _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Point(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfPoint.copyWith(...)`.
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
      if (instance.date case final value?) 'date': value,
      if (instance.truncated case final value?) 'truncated': value,
      if (instance.day case final value?) 'day': value,
      if (instance.hour case final value?) 'hour': value,
      if (instance.minute case final value?) 'minute': value,
    };
