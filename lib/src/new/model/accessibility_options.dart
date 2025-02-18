import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'accessibility_options.g.dart';

/// Information about the accessibility options a place offers.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#accessibilityoptions
@JsonSerializable()
@CopyWith()
class AccessibilityOptions extends Jsonable<AccessibilityOptions> {
  /// Place offers wheelchair accessible parking.
  final bool? wheelchairAccessibleParking;

  /// Places has wheelchair accessible entrance.
  final bool? wheelchairAccessibleEntrance;

  /// Place has wheelchair accessible restroom.
  final bool? wheelchairAccessibleRestroom;

  /// Place has wheelchair accessible seating.
  final bool? wheelchairAccessibleSeating;

  AccessibilityOptions({
    this.wheelchairAccessibleParking,
    this.wheelchairAccessibleEntrance,
    this.wheelchairAccessibleRestroom,
    this.wheelchairAccessibleSeating,
  });

  factory AccessibilityOptions.fromJson(Map<String, dynamic> json) {
    return _$AccessibilityOptionsFromJson(json);
  }

  @override
  AccessibilityOptions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AccessibilityOptions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AccessibilityOptionsToJson(this);
  }
}
