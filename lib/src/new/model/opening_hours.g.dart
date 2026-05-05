// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [OpeningHours] is to generate the code for a copyWith(...) function.
extension $OpeningHoursCopyWithExtension on OpeningHours {
  OpeningHours copyWith({
    List<Period>? periods,
    List<String>? weekdayDescriptions,
    SecondaryHoursType? secondaryHoursType,
    List<SpecialDay>? specialDays,
    DateTime? nextOpenTime,
    DateTime? nextCloseTime,
    bool? openNow,
  }) {
    return OpeningHours(
      periods:
          ((periods?.isNotEmpty ?? false) ? periods : null) ?? this.periods,
      weekdayDescriptions:
          ((weekdayDescriptions?.isNotEmpty ?? false)
              ? weekdayDescriptions
              : null) ??
          this.weekdayDescriptions,
      secondaryHoursType: secondaryHoursType ?? this.secondaryHoursType,
      specialDays:
          ((specialDays?.isNotEmpty ?? false) ? specialDays : null) ??
          this.specialDays,
      nextOpenTime: nextOpenTime ?? this.nextOpenTime,
      nextCloseTime: nextCloseTime ?? this.nextCloseTime,
      openNow: openNow ?? this.openNow,
    );
  }
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
