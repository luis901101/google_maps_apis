// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LegCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Leg(...).copyWith(id: 12, name: "My name")
  /// ````
  Leg call({
    String? duration,
    int? distanceMeters,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLeg.copyWith(...)`.
class _$LegCWProxyImpl implements _$LegCWProxy {
  const _$LegCWProxyImpl(this._value);

  final Leg _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Leg(...).copyWith(id: 12, name: "My name")
  /// ````
  Leg call({
    Object? duration = const $CopyWithPlaceholder(),
    Object? distanceMeters = const $CopyWithPlaceholder(),
  }) {
    return Leg(
      duration: duration == const $CopyWithPlaceholder()
          ? _value.duration
          // ignore: cast_nullable_to_non_nullable
          : duration as String?,
      distanceMeters: distanceMeters == const $CopyWithPlaceholder()
          ? _value.distanceMeters
          // ignore: cast_nullable_to_non_nullable
          : distanceMeters as int?,
    );
  }
}

extension $LegCopyWith on Leg {
  /// Returns a callable class that can be used as follows: `instanceOfLeg.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$LegCWProxy get copyWith => _$LegCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leg _$LegFromJson(Map<String, dynamic> json) => Leg(
      duration: json['duration'] as String?,
      distanceMeters: (json['distanceMeters'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LegToJson(Leg instance) => <String, dynamic>{
      if (instance.duration case final value?) 'duration': value,
      if (instance.distanceMeters case final value?) 'distanceMeters': value,
    };
