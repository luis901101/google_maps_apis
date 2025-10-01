// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewport.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ViewportCWProxy {
  Viewport low(LatLng? low);

  Viewport high(LatLng? high);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Viewport(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Viewport(...).copyWith(id: 12, name: "My name")
  /// ```
  Viewport call({LatLng? low, LatLng? high});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfViewport.copyWith(...)` or call `instanceOfViewport.copyWith.fieldName(value)` for a single field.
class _$ViewportCWProxyImpl implements _$ViewportCWProxy {
  const _$ViewportCWProxyImpl(this._value);

  final Viewport _value;

  @override
  Viewport low(LatLng? low) => call(low: low);

  @override
  Viewport high(LatLng? high) => call(high: high);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Viewport(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Viewport(...).copyWith(id: 12, name: "My name")
  /// ```
  Viewport call({
    Object? low = const $CopyWithPlaceholder(),
    Object? high = const $CopyWithPlaceholder(),
  }) {
    return Viewport(
      low: low == const $CopyWithPlaceholder()
          ? _value.low
          // ignore: cast_nullable_to_non_nullable
          : low as LatLng?,
      high: high == const $CopyWithPlaceholder()
          ? _value.high
          // ignore: cast_nullable_to_non_nullable
          : high as LatLng?,
    );
  }
}

extension $ViewportCopyWith on Viewport {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfViewport.copyWith(...)` or `instanceOfViewport.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ViewportCWProxy get copyWith => _$ViewportCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Viewport _$ViewportFromJson(Map<String, dynamic> json) => Viewport(
  low: json['low'] == null
      ? null
      : LatLng.fromJson(json['low'] as Map<String, dynamic>),
  high: json['high'] == null
      ? null
      : LatLng.fromJson(json['high'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ViewportToJson(Viewport instance) => <String, dynamic>{
  'low': ?instance.low,
  'high': ?instance.high,
};
