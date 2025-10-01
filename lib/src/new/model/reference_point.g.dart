// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_point.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReferencePointCWProxy {
  ReferencePoint latitude(double latitude);

  ReferencePoint longitude(double longitude);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReferencePoint(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReferencePoint(...).copyWith(id: 12, name: "My name")
  /// ```
  ReferencePoint call({double latitude, double longitude});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReferencePoint.copyWith(...)` or call `instanceOfReferencePoint.copyWith.fieldName(value)` for a single field.
class _$ReferencePointCWProxyImpl implements _$ReferencePointCWProxy {
  const _$ReferencePointCWProxyImpl(this._value);

  final ReferencePoint _value;

  @override
  ReferencePoint latitude(double latitude) => call(latitude: latitude);

  @override
  ReferencePoint longitude(double longitude) => call(longitude: longitude);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReferencePoint(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReferencePoint(...).copyWith(id: 12, name: "My name")
  /// ```
  ReferencePoint call({
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
  }) {
    return ReferencePoint(
      latitude: latitude == const $CopyWithPlaceholder() || latitude == null
          ? _value.latitude
          // ignore: cast_nullable_to_non_nullable
          : latitude as double,
      longitude: longitude == const $CopyWithPlaceholder() || longitude == null
          ? _value.longitude
          // ignore: cast_nullable_to_non_nullable
          : longitude as double,
    );
  }
}

extension $ReferencePointCopyWith on ReferencePoint {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReferencePoint.copyWith(...)` or `instanceOfReferencePoint.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReferencePointCWProxy get copyWith => _$ReferencePointCWProxyImpl(this);
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
