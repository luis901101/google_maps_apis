import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/entity/period.dart';
import 'package:google_maps_apis/src/new/entity/special_day.dart';
import 'package:google_maps_apis/src/new/enums/secondary_hours_type.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'opening_hours.g.dart';

/// Information about business hour of the place.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#openinghours
@JsonSerializable()
@CopyWith()
class OpeningHours extends Jsonable<OpeningHours> {
  /// The periods that this place is open during the week. The periods are in
  /// chronological order, starting with Sunday in the place-local timezone.
  /// An empty (but not absent) value indicates a place that is never open, e.g.
  /// because it is closed temporarily for renovations.
  final List<Period>? periods;

  /// Localized strings describing the opening hours of this place, one string
  /// for each day of the week. Will be empty if the hours are unknown or could
  /// not be converted to localized text. Example: "Sun: 18:00–06:00"
  final List<String>? weekdayDescriptions;

  /// A type string used to identify the type of secondary hours.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final SecondaryHoursType? secondaryHoursType;

  /// Structured information for special days that fall within the period that the
  /// returned opening hours cover. Special days are days that could impact the
  /// business hours of a place, e.g. Christmas day. Set for currentOpeningHours
  /// and currentSecondaryOpeningHours if there are exceptional hours.
  final List<SpecialDay>? specialDays;

  /// The next time the current opening hours period starts up to 7 days in the
  /// future. This field is only populated if the opening hours period is not
  /// active at the time of serving the request.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final DateTime? nextOpenTime;

  /// The next time the current opening hours period ends up to 7 days in the
  /// future. This field is only populated if the opening hours period is active
  /// at the time of serving the request.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final DateTime? nextCloseTime;

  /// Whether the opening hours period is currently active. For regular opening
  /// hours and current opening hours, this field means whether the place is open.
  /// For secondary opening hours and current secondary opening hours, this field
  /// means whether the secondary hours of this place is active.
  final bool? openNow;

  OpeningHours({
    this.periods,
    this.weekdayDescriptions,
    this.secondaryHoursType,
    this.specialDays,
    this.nextOpenTime,
    this.nextCloseTime,
    this.openNow,
  });

  factory OpeningHours.fromJson(Map<String, dynamic> json) {
    return _$OpeningHoursFromJson(json);
  }

  @override
  OpeningHours? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? OpeningHours.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$OpeningHoursToJson(this);
  }
}
