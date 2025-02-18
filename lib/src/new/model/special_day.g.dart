// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_day.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SpecialDayCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// SpecialDay(...).copyWith(id: 12, name: "My name")
  /// ````
  SpecialDay call({
    Date? date,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSpecialDay.copyWith(...)`.
class _$SpecialDayCWProxyImpl implements _$SpecialDayCWProxy {
  const _$SpecialDayCWProxyImpl(this._value);

  final SpecialDay _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// SpecialDay(...).copyWith(id: 12, name: "My name")
  /// ````
  SpecialDay call({
    Object? date = const $CopyWithPlaceholder(),
  }) {
    return SpecialDay(
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as Date?,
    );
  }
}

extension $SpecialDayCopyWith on SpecialDay {
  /// Returns a callable class that can be used as follows: `instanceOfSpecialDay.copyWith(...)`.
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
    <String, dynamic>{
      if (instance.date case final value?) 'date': value,
    };
