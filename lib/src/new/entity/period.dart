import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/entity/point.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'period.g.dart';

/// A period the place remains in openNow status.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#period
@JsonSerializable()
@CopyWith()
class Period extends Jsonable<Period> {
  /// The time that the place starts to be open.
  final Point? open;

  /// The time that the place starts to be closed.
  final Point? close;

  Period({
    this.open,
    this.close,
  });

  factory Period.fromJson(Map<String, dynamic> json) {
    return _$PeriodFromJson(json);
  }

  @override
  Period? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Period.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PeriodToJson(this);
  }
}
