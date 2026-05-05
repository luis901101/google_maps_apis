// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Period] is to generate the code for a copyWith(...) function.
extension $PeriodCopyWithExtension on Period {
  Period copyWith({Point? open, Point? close}) {
    return Period(open: open ?? this.open, close: close ?? this.close);
  }
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
  'open': ?instance.open,
  'close': ?instance.close,
};
