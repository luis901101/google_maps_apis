// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewport.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ViewportCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Viewport(...).copyWith(id: 12, name: "My name")
  /// ````
  Viewport call({
    LatLng? low,
    LatLng? high,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfViewport.copyWith(...)`.
class _$ViewportCWProxyImpl implements _$ViewportCWProxy {
  const _$ViewportCWProxyImpl(this._value);

  final Viewport _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Viewport(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfViewport.copyWith(...)`.
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
      if (instance.low case final value?) 'low': value,
      if (instance.high case final value?) 'high': value,
    };
