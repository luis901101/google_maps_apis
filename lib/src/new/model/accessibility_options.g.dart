// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accessibility_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AccessibilityOptionsCWProxy {
  AccessibilityOptions wheelchairAccessibleParking(
    bool? wheelchairAccessibleParking,
  );

  AccessibilityOptions wheelchairAccessibleEntrance(
    bool? wheelchairAccessibleEntrance,
  );

  AccessibilityOptions wheelchairAccessibleRestroom(
    bool? wheelchairAccessibleRestroom,
  );

  AccessibilityOptions wheelchairAccessibleSeating(
    bool? wheelchairAccessibleSeating,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AccessibilityOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AccessibilityOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  AccessibilityOptions call({
    bool? wheelchairAccessibleParking,
    bool? wheelchairAccessibleEntrance,
    bool? wheelchairAccessibleRestroom,
    bool? wheelchairAccessibleSeating,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAccessibilityOptions.copyWith(...)` or call `instanceOfAccessibilityOptions.copyWith.fieldName(value)` for a single field.
class _$AccessibilityOptionsCWProxyImpl
    implements _$AccessibilityOptionsCWProxy {
  const _$AccessibilityOptionsCWProxyImpl(this._value);

  final AccessibilityOptions _value;

  @override
  AccessibilityOptions wheelchairAccessibleParking(
    bool? wheelchairAccessibleParking,
  ) => call(wheelchairAccessibleParking: wheelchairAccessibleParking);

  @override
  AccessibilityOptions wheelchairAccessibleEntrance(
    bool? wheelchairAccessibleEntrance,
  ) => call(wheelchairAccessibleEntrance: wheelchairAccessibleEntrance);

  @override
  AccessibilityOptions wheelchairAccessibleRestroom(
    bool? wheelchairAccessibleRestroom,
  ) => call(wheelchairAccessibleRestroom: wheelchairAccessibleRestroom);

  @override
  AccessibilityOptions wheelchairAccessibleSeating(
    bool? wheelchairAccessibleSeating,
  ) => call(wheelchairAccessibleSeating: wheelchairAccessibleSeating);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AccessibilityOptions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AccessibilityOptions(...).copyWith(id: 12, name: "My name")
  /// ```
  AccessibilityOptions call({
    Object? wheelchairAccessibleParking = const $CopyWithPlaceholder(),
    Object? wheelchairAccessibleEntrance = const $CopyWithPlaceholder(),
    Object? wheelchairAccessibleRestroom = const $CopyWithPlaceholder(),
    Object? wheelchairAccessibleSeating = const $CopyWithPlaceholder(),
  }) {
    return AccessibilityOptions(
      wheelchairAccessibleParking:
          wheelchairAccessibleParking == const $CopyWithPlaceholder()
          ? _value.wheelchairAccessibleParking
          // ignore: cast_nullable_to_non_nullable
          : wheelchairAccessibleParking as bool?,
      wheelchairAccessibleEntrance:
          wheelchairAccessibleEntrance == const $CopyWithPlaceholder()
          ? _value.wheelchairAccessibleEntrance
          // ignore: cast_nullable_to_non_nullable
          : wheelchairAccessibleEntrance as bool?,
      wheelchairAccessibleRestroom:
          wheelchairAccessibleRestroom == const $CopyWithPlaceholder()
          ? _value.wheelchairAccessibleRestroom
          // ignore: cast_nullable_to_non_nullable
          : wheelchairAccessibleRestroom as bool?,
      wheelchairAccessibleSeating:
          wheelchairAccessibleSeating == const $CopyWithPlaceholder()
          ? _value.wheelchairAccessibleSeating
          // ignore: cast_nullable_to_non_nullable
          : wheelchairAccessibleSeating as bool?,
    );
  }
}

extension $AccessibilityOptionsCopyWith on AccessibilityOptions {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAccessibilityOptions.copyWith(...)` or `instanceOfAccessibilityOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AccessibilityOptionsCWProxy get copyWith =>
      _$AccessibilityOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessibilityOptions _$AccessibilityOptionsFromJson(
  Map<String, dynamic> json,
) => AccessibilityOptions(
  wheelchairAccessibleParking: json['wheelchairAccessibleParking'] as bool?,
  wheelchairAccessibleEntrance: json['wheelchairAccessibleEntrance'] as bool?,
  wheelchairAccessibleRestroom: json['wheelchairAccessibleRestroom'] as bool?,
  wheelchairAccessibleSeating: json['wheelchairAccessibleSeating'] as bool?,
);

Map<String, dynamic> _$AccessibilityOptionsToJson(
  AccessibilityOptions instance,
) => <String, dynamic>{
  'wheelchairAccessibleParking': ?instance.wheelchairAccessibleParking,
  'wheelchairAccessibleEntrance': ?instance.wheelchairAccessibleEntrance,
  'wheelchairAccessibleRestroom': ?instance.wheelchairAccessibleRestroom,
  'wheelchairAccessibleSeating': ?instance.wheelchairAccessibleSeating,
};
