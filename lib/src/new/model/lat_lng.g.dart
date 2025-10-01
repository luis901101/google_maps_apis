// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_lng.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LatLngCWProxy {
  LatLng latitude(double? latitude);

  LatLng longitude(double? longitude);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LatLng(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LatLng(...).copyWith(id: 12, name: "My name")
  /// ```
  LatLng call({double? latitude, double? longitude});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLatLng.copyWith(...)` or call `instanceOfLatLng.copyWith.fieldName(value)` for a single field.
class _$LatLngCWProxyImpl implements _$LatLngCWProxy {
  const _$LatLngCWProxyImpl(this._value);

  final LatLng _value;

  @override
  LatLng latitude(double? latitude) => call(latitude: latitude);

  @override
  LatLng longitude(double? longitude) => call(longitude: longitude);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LatLng(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LatLng(...).copyWith(id: 12, name: "My name")
  /// ```
  LatLng call({
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
  }) {
    return LatLng(
      latitude: latitude == const $CopyWithPlaceholder()
          ? _value.latitude
          // ignore: cast_nullable_to_non_nullable
          : latitude as double?,
      longitude: longitude == const $CopyWithPlaceholder()
          ? _value.longitude
          // ignore: cast_nullable_to_non_nullable
          : longitude as double?,
    );
  }
}

extension $LatLngCopyWith on LatLng {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLatLng.copyWith(...)` or `instanceOfLatLng.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LatLngCWProxy get copyWith => _$LatLngCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLng _$LatLngFromJson(Map<String, dynamic> json) => LatLng(
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$LatLngToJson(LatLng instance) => <String, dynamic>{
  'latitude': ?instance.latitude,
  'longitude': ?instance.longitude,
};
