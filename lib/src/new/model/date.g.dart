// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Date] is to generate the code for a copyWith(...) function.
extension $DateCopyWithExtension on Date {
  Date copyWith({int? year, int? month, int? day}) {
    return Date(
      year: year ?? this.year,
      month: month ?? this.month,
      day: day ?? this.day,
    );
  }
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
  'year': ?instance.year,
  'month': ?instance.month,
  'day': ?instance.day,
};
