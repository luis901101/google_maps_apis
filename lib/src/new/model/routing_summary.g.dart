// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RoutingSummaryCWProxy {
  RoutingSummary legs(List<Leg>? legs);

  RoutingSummary directionsUri(String? directionsUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RoutingSummary(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RoutingSummary(...).copyWith(id: 12, name: "My name")
  /// ```
  RoutingSummary call({List<Leg>? legs, String? directionsUri});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRoutingSummary.copyWith(...)` or call `instanceOfRoutingSummary.copyWith.fieldName(value)` for a single field.
class _$RoutingSummaryCWProxyImpl implements _$RoutingSummaryCWProxy {
  const _$RoutingSummaryCWProxyImpl(this._value);

  final RoutingSummary _value;

  @override
  RoutingSummary legs(List<Leg>? legs) => call(legs: legs);

  @override
  RoutingSummary directionsUri(String? directionsUri) =>
      call(directionsUri: directionsUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RoutingSummary(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RoutingSummary(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRoutingSummary.copyWith(...)` or `instanceOfRoutingSummary.copyWith.fieldName(...)`.
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
      'legs': ?instance.legs,
      'directionsUri': ?instance.directionsUri,
    };
