// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_point.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [ReferencePoint] is to generate the code for a copyWith(...) function.
extension $ReferencePointCopyWithExtension on ReferencePoint {
  ReferencePoint copyWith({double? latitude, double? longitude}) {
    return ReferencePoint(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferencePoint _$ReferencePointFromJson(Map<String, dynamic> json) =>
    ReferencePoint(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$ReferencePointToJson(ReferencePoint instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
