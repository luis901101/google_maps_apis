// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_day.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [SpecialDay] is to generate the code for a copyWith(...) function.
extension $SpecialDayCopyWithExtension on SpecialDay {
  SpecialDay copyWith({Date? date}) {
    return SpecialDay(date: date ?? this.date);
  }
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
