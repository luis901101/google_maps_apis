// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Point] is to generate the code for a copyWith(...) function.
extension $PointCopyWithExtension on Point {
  Point copyWith({
    Date? date,
    bool? truncated,
    int? day,
    int? hour,
    int? minute,
  }) {
    return Point(
      date: date ?? this.date,
      truncated: truncated ?? this.truncated,
      day: day ?? this.day,
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
    );
  }
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
  'date': ?instance.date,
  'truncated': ?instance.truncated,
  'day': ?instance.day,
  'hour': ?instance.hour,
  'minute': ?instance.minute,
};
