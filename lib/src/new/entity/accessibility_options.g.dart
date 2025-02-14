// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accessibility_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AccessibilityOptionsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// AccessibilityOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  AccessibilityOptions call({
    bool? wheelchairAccessibleParking,
    bool? wheelchairAccessibleEntrance,
    bool? wheelchairAccessibleRestroom,
    bool? wheelchairAccessibleSeating,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAccessibilityOptions.copyWith(...)`.
class _$AccessibilityOptionsCWProxyImpl
    implements _$AccessibilityOptionsCWProxy {
  const _$AccessibilityOptionsCWProxyImpl(this._value);

  final AccessibilityOptions _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// AccessibilityOptions(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfAccessibilityOptions.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$AccessibilityOptionsCWProxy get copyWith =>
      _$AccessibilityOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessibilityOptions _$AccessibilityOptionsFromJson(
        Map<String, dynamic> json) =>
    AccessibilityOptions(
      wheelchairAccessibleParking: json['wheelchairAccessibleParking'] as bool?,
      wheelchairAccessibleEntrance:
          json['wheelchairAccessibleEntrance'] as bool?,
      wheelchairAccessibleRestroom:
          json['wheelchairAccessibleRestroom'] as bool?,
      wheelchairAccessibleSeating: json['wheelchairAccessibleSeating'] as bool?,
    );

Map<String, dynamic> _$AccessibilityOptionsToJson(
        AccessibilityOptions instance) =>
    <String, dynamic>{
      if (instance.wheelchairAccessibleParking case final value?)
        'wheelchairAccessibleParking': value,
      if (instance.wheelchairAccessibleEntrance case final value?)
        'wheelchairAccessibleEntrance': value,
      if (instance.wheelchairAccessibleRestroom case final value?)
        'wheelchairAccessibleRestroom': value,
      if (instance.wheelchairAccessibleSeating case final value?)
        'wheelchairAccessibleSeating': value,
    };
