// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DateCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Date(...).copyWith(id: 12, name: "My name")
  /// ````
  Date call({
    int? year,
    int? month,
    int? day,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDate.copyWith(...)`.
class _$DateCWProxyImpl implements _$DateCWProxy {
  const _$DateCWProxyImpl(this._value);

  final Date _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Date(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfDate.copyWith(...)`.
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
      if (instance.year case final value?) 'year': value,
      if (instance.month case final value?) 'month': value,
      if (instance.day case final value?) 'day': value,
    };
