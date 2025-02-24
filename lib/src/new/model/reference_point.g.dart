// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_point.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReferencePointCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ReferencePoint(...).copyWith(id: 12, name: "My name")
  /// ````
  ReferencePoint call({
    double latitude,
    double longitude,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReferencePoint.copyWith(...)`.
class _$ReferencePointCWProxyImpl implements _$ReferencePointCWProxy {
  const _$ReferencePointCWProxyImpl(this._value);

  final ReferencePoint _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ReferencePoint(...).copyWith(id: 12, name: "My name")
  /// ````
  ReferencePoint call({
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
  }) {
    return ReferencePoint(
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

extension $ReferencePointCopyWith on ReferencePoint {
  /// Returns a callable class that can be used as follows: `instanceOfReferencePoint.copyWith(...)`.
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
