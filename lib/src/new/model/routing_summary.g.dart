// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [RoutingSummary] is to generate the code for a copyWith(...) function.
extension $RoutingSummaryCopyWithExtension on RoutingSummary {
  RoutingSummary copyWith({List<Leg>? legs, String? directionsUri}) {
    return RoutingSummary(
      legs: ((legs?.isNotEmpty ?? false) ? legs : null) ?? this.legs,
      directionsUri: directionsUri ?? this.directionsUri,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoutingSummary _$RoutingSummaryFromJson(Map<String, dynamic> json) =>
    RoutingSummary(
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => Leg.fromJson(e as Map<String, dynamic>))
          .toList(),
      directionsUri: json['directionsUri'] as String?,
    );

Map<String, dynamic> _$RoutingSummaryToJson(RoutingSummary instance) =>
    <String, dynamic>{
      'legs': ?instance.legs,
      'directionsUri': ?instance.directionsUri,
    };
