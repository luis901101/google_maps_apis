// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Leg] is to generate the code for a copyWith(...) function.
extension $LegCopyWithExtension on Leg {
  Leg copyWith({String? duration, int? distanceMeters}) {
    return Leg(
      duration: duration ?? this.duration,
      distanceMeters: distanceMeters ?? this.distanceMeters,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leg _$LegFromJson(Map<String, dynamic> json) => Leg(
  duration: json['duration'] as String?,
  distanceMeters: (json['distanceMeters'] as num?)?.toInt(),
);

Map<String, dynamic> _$LegToJson(Leg instance) => <String, dynamic>{
  'duration': ?instance.duration,
  'distanceMeters': ?instance.distanceMeters,
};
