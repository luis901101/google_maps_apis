// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RoutingSummaryCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// RoutingSummary(...).copyWith(id: 12, name: "My name")
  /// ````
  RoutingSummary call({
    List<Leg>? legs,
    String? directionsUri,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRoutingSummary.copyWith(...)`.
class _$RoutingSummaryCWProxyImpl implements _$RoutingSummaryCWProxy {
  const _$RoutingSummaryCWProxyImpl(this._value);

  final RoutingSummary _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// RoutingSummary(...).copyWith(id: 12, name: "My name")
  /// ````
  RoutingSummary call({
    Object? legs = const $CopyWithPlaceholder(),
    Object? directionsUri = const $CopyWithPlaceholder(),
  }) {
    return RoutingSummary(
      legs: legs == const $CopyWithPlaceholder()
          ? _value.legs
          // ignore: cast_nullable_to_non_nullable
          : legs as List<Leg>?,
      directionsUri: directionsUri == const $CopyWithPlaceholder()
          ? _value.directionsUri
          // ignore: cast_nullable_to_non_nullable
          : directionsUri as String?,
    );
  }
}

extension $RoutingSummaryCopyWith on RoutingSummary {
  /// Returns a callable class that can be used as follows: `instanceOfRoutingSummary.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$RoutingSummaryCWProxy get copyWith => _$RoutingSummaryCWProxyImpl(this);
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
      if (instance.legs case final value?) 'legs': value,
      if (instance.directionsUri case final value?) 'directionsUri': value,
    };
