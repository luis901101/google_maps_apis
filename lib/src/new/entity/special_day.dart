import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/entity/date.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'special_day.g.dart';

/// Structured information for special days that fall within the period that the
/// returned opening hours cover. Special days are days that could impact the
/// business hours of a place, e.g. Christmas day.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#specialday
@JsonSerializable()
@CopyWith()
class SpecialDay extends Jsonable<SpecialDay> {
  /// The date of this special day.
  final Date? date;

  SpecialDay({
    this.date,
  });

  factory SpecialDay.fromJson(Map<String, dynamic> json) {
    return _$SpecialDayFromJson(json);
  }

  @override
  SpecialDay? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? SpecialDay.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$SpecialDayToJson(this);
  }
}
