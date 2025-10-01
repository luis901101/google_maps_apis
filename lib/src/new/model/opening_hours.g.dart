// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OpeningHoursCWProxy {
  OpeningHours periods(List<Period>? periods);

  OpeningHours weekdayDescriptions(List<String>? weekdayDescriptions);

  OpeningHours secondaryHoursType(SecondaryHoursType? secondaryHoursType);

  OpeningHours specialDays(List<SpecialDay>? specialDays);

  OpeningHours nextOpenTime(DateTime? nextOpenTime);

  OpeningHours nextCloseTime(DateTime? nextCloseTime);

  OpeningHours openNow(bool? openNow);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OpeningHours(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OpeningHours(...).copyWith(id: 12, name: "My name")
  /// ```
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

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOpeningHours.copyWith(...)` or call `instanceOfOpeningHours.copyWith.fieldName(value)` for a single field.
class _$OpeningHoursCWProxyImpl implements _$OpeningHoursCWProxy {
  const _$OpeningHoursCWProxyImpl(this._value);

  final OpeningHours _value;

  @override
  OpeningHours periods(List<Period>? periods) => call(periods: periods);

  @override
  OpeningHours weekdayDescriptions(List<String>? weekdayDescriptions) =>
      call(weekdayDescriptions: weekdayDescriptions);

  @override
  OpeningHours secondaryHoursType(SecondaryHoursType? secondaryHoursType) =>
      call(secondaryHoursType: secondaryHoursType);

  @override
  OpeningHours specialDays(List<SpecialDay>? specialDays) =>
      call(specialDays: specialDays);

  @override
  OpeningHours nextOpenTime(DateTime? nextOpenTime) =>
      call(nextOpenTime: nextOpenTime);

  @override
  OpeningHours nextCloseTime(DateTime? nextCloseTime) =>
      call(nextCloseTime: nextCloseTime);

  @override
  OpeningHours openNow(bool? openNow) => call(openNow: openNow);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OpeningHours(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OpeningHours(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOpeningHours.copyWith(...)` or `instanceOfOpeningHours.copyWith.fieldName(...)`.
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
    _$SecondaryHoursTypeEnumMap,
    json['secondaryHoursType'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
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
      'periods': ?instance.periods,
      'weekdayDescriptions': ?instance.weekdayDescriptions,
      'secondaryHoursType':
          ?_$SecondaryHoursTypeEnumMap[instance.secondaryHoursType],
      'specialDays': ?instance.specialDays,
      'nextOpenTime': ?instance.nextOpenTime?.toIso8601String(),
      'nextCloseTime': ?instance.nextCloseTime?.toIso8601String(),
      'openNow': ?instance.openNow,
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
