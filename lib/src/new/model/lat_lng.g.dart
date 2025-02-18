// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_lng.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LatLngCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// LatLng(...).copyWith(id: 12, name: "My name")
  /// ````
  LatLng call({
    double? latitude,
    double? longitude,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLatLng.copyWith(...)`.
class _$LatLngCWProxyImpl implements _$LatLngCWProxy {
  const _$LatLngCWProxyImpl(this._value);

  final LatLng _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// LatLng(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfLatLng.copyWith(...)`.
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
      if (instance.latitude case final value?) 'latitude': value,
      if (instance.longitude case final value?) 'longitude': value,
    };
