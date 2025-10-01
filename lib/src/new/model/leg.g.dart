// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LegCWProxy {
  Leg duration(String? duration);

  Leg distanceMeters(int? distanceMeters);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Leg(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Leg(...).copyWith(id: 12, name: "My name")
  /// ```
  Leg call({String? duration, int? distanceMeters});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLeg.copyWith(...)` or call `instanceOfLeg.copyWith.fieldName(value)` for a single field.
class _$LegCWProxyImpl implements _$LegCWProxy {
  const _$LegCWProxyImpl(this._value);

  final Leg _value;

  @override
  Leg duration(String? duration) => call(duration: duration);

  @override
  Leg distanceMeters(int? distanceMeters) =>
      call(distanceMeters: distanceMeters);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Leg(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Leg(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLeg.copyWith(...)` or `instanceOfLeg.copyWith.fieldName(...)`.
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
  'duration': ?instance.duration,
  'distanceMeters': ?instance.distanceMeters,
};
