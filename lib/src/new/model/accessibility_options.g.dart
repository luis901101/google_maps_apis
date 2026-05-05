// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accessibility_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [AccessibilityOptions] is to generate the code for a copyWith(...) function.
extension $AccessibilityOptionsCopyWithExtension on AccessibilityOptions {
  AccessibilityOptions copyWith({
    bool? wheelchairAccessibleParking,
    bool? wheelchairAccessibleEntrance,
    bool? wheelchairAccessibleRestroom,
    bool? wheelchairAccessibleSeating,
  }) {
    return AccessibilityOptions(
      wheelchairAccessibleParking:
          wheelchairAccessibleParking ?? this.wheelchairAccessibleParking,
      wheelchairAccessibleEntrance:
          wheelchairAccessibleEntrance ?? this.wheelchairAccessibleEntrance,
      wheelchairAccessibleRestroom:
          wheelchairAccessibleRestroom ?? this.wheelchairAccessibleRestroom,
      wheelchairAccessibleSeating:
          wheelchairAccessibleSeating ?? this.wheelchairAccessibleSeating,
    );
  }
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
