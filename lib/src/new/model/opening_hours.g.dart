// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OpeningHoursCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// OpeningHours(...).copyWith(id: 12, name: "My name")
  /// ````
  OpeningHours call({
    List<Period>? periods,
    List<String>? weekdayDescriptions,
    SecondaryHoursType? secondaryHoursType,
    List<SpecialDay>? specialDays,
    DateTime? nextOpenTime,
    DateTime? nextCloseTime,
    bool? openNow,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOpeningHours.copyWith(...)`.
class _$OpeningHoursCWProxyImpl implements _$OpeningHoursCWProxy {
  const _$OpeningHoursCWProxyImpl(this._value);

  final OpeningHours _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// OpeningHours(...).copyWith(id: 12, name: "My name")
  /// ````
  OpeningHours call({
    Object? periods = const $CopyWithPlaceholder(),
    Object? weekdayDescriptions = const $CopyWithPlaceholder(),
    Object? secondaryHoursType = const $CopyWithPlaceholder(),
    Object? specialDays = const $CopyWithPlaceholder(),
    Object? nextOpenTime = const $CopyWithPlaceholder(),
    Object? nextCloseTime = const $CopyWithPlaceholder(),
    Object? openNow = const $CopyWithPlaceholder(),
  }) {
    return OpeningHours(
      periods: periods == const $CopyWithPlaceholder()
          ? _value.periods
          // ignore: cast_nullable_to_non_nullable
          : periods as List<Period>?,
      weekdayDescriptions: weekdayDescriptions == const $CopyWithPlaceholder()
          ? _value.weekdayDescriptions
          // ignore: cast_nullable_to_non_nullable
          : weekdayDescriptions as List<String>?,
      secondaryHoursType: secondaryHoursType == const $CopyWithPlaceholder()
          ? _value.secondaryHoursType
          // ignore: cast_nullable_to_non_nullable
          : secondaryHoursType as SecondaryHoursType?,
      specialDays: specialDays == const $CopyWithPlaceholder()
          ? _value.specialDays
          // ignore: cast_nullable_to_non_nullable
          : specialDays as List<SpecialDay>?,
      nextOpenTime: nextOpenTime == const $CopyWithPlaceholder()
          ? _value.nextOpenTime
          // ignore: cast_nullable_to_non_nullable
          : nextOpenTime as DateTime?,
      nextCloseTime: nextCloseTime == const $CopyWithPlaceholder()
          ? _value.nextCloseTime
          // ignore: cast_nullable_to_non_nullable
          : nextCloseTime as DateTime?,
      openNow: openNow == const $CopyWithPlaceholder()
          ? _value.openNow
          // ignore: cast_nullable_to_non_nullable
          : openNow as bool?,
    );
  }
}

extension $OpeningHoursCopyWith on OpeningHours {
  /// Returns a callable class that can be used as follows: `instanceOfOpeningHours.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$OpeningHoursCWProxy get copyWith => _$OpeningHoursCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) => OpeningHours(
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
      weekdayDescriptions: (json['weekdayDescriptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      secondaryHoursType: $enumDecodeNullable(
          _$SecondaryHoursTypeEnumMap, json['secondaryHoursType'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      specialDays: (json['specialDays'] as List<dynamic>?)
          ?.map((e) => SpecialDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextOpenTime: json['nextOpenTime'] == null
          ? null
          : DateTime.parse(json['nextOpenTime'] as String),
      nextCloseTime: json['nextCloseTime'] == null
          ? null
          : DateTime.parse(json['nextCloseTime'] as String),
      openNow: json['openNow'] as bool?,
    );

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) =>
    <String, dynamic>{
      if (instance.periods case final value?) 'periods': value,
      if (instance.weekdayDescriptions case final value?)
        'weekdayDescriptions': value,
      if (_$SecondaryHoursTypeEnumMap[instance.secondaryHoursType]
          case final value?)
        'secondaryHoursType': value,
      if (instance.specialDays case final value?) 'specialDays': value,
      if (instance.nextOpenTime?.toIso8601String() case final value?)
        'nextOpenTime': value,
      if (instance.nextCloseTime?.toIso8601String() case final value?)
        'nextCloseTime': value,
      if (instance.openNow case final value?) 'openNow': value,
    };

const _$SecondaryHoursTypeEnumMap = {
  SecondaryHoursType.secondaryHoursTypeUnspecified:
      'SECONDARY_HOURS_TYPE_UNSPECIFIED',
  SecondaryHoursType.driveThrough: 'DRIVE_THROUGH',
  SecondaryHoursType.happyHour: 'HAPPY_HOUR',
  SecondaryHoursType.delivery: 'DELIVERY',
  SecondaryHoursType.takeout: 'TAKEOUT',
  SecondaryHoursType.kitchen: 'KITCHEN',
  SecondaryHoursType.breakfast: 'BREAKFAST',
  SecondaryHoursType.lunch: 'LUNCH',
  SecondaryHoursType.dinner: 'DINNER',
  SecondaryHoursType.brunch: 'BRUNCH',
  SecondaryHoursType.pickup: 'PICKUP',
  SecondaryHoursType.access: 'ACCESS',
  SecondaryHoursType.seniorHours: 'SENIOR_HOURS',
  SecondaryHoursType.onlineServiceHours: 'ONLINE_SERVICE_HOURS',
};
