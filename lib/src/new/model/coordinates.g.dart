// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CoordinatesCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Coordinates(...).copyWith(id: 12, name: "My name")
  /// ````
  Coordinates call({
    double latitude,
    double longitude,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCoordinates.copyWith(...)`.
class _$CoordinatesCWProxyImpl implements _$CoordinatesCWProxy {
  const _$CoordinatesCWProxyImpl(this._value);

  final Coordinates _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Coordinates(...).copyWith(id: 12, name: "My name")
  /// ````
  Coordinates call({
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
  }) {
    return Coordinates(
      latitude: latitude == const $CopyWithPlaceholder()
          ? _value.latitude
          // ignore: cast_nullable_to_non_nullable
          : latitude as double,
      longitude: longitude == const $CopyWithPlaceholder()
          ? _value.longitude
          // ignore: cast_nullable_to_non_nullable
          : longitude as double,
    );
  }
}

extension $CoordinatesCopyWith on Coordinates {
  /// Returns a callable class that can be used as follows: `instanceOfCoordinates.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$CoordinatesCWProxy get copyWith => _$CoordinatesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
