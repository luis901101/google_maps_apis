import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plus_code.g.dart';

/// Plus code (http://plus.codes) is a location reference with two formats:
/// global code defining a 14mx14m (1/8000th of a degree) or smaller rectangle,
/// and compound code, replacing the prefix with a reference location.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#pluscode
@JsonSerializable()
@CopyWith()
class PlusCode extends Jsonable<PlusCode> {
  /// Place's global (full) code, such as "9FWM33GV+HQ",
  /// representing an 1/8000 by 1/8000 degree area (~14 by 14 meters).
  final String? globalCode;

  /// Place's compound code, such as "33GV+HQ, Ramberg, Norway", containing the
  /// suffix of the global code and replacing the prefix with a formatted name
  /// of a reference entity.
  final String? compoundCode;

  PlusCode({
    this.globalCode,
    this.compoundCode,
  });

  factory PlusCode.fromJson(Map<String, dynamic> json) {
    return _$PlusCodeFromJson(json);
  }

  @override
  PlusCode? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PlusCode.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlusCodeToJson(this);
  }
}
