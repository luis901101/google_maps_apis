import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/filter/base_session_filter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_details_filter.g.dart';

@JsonSerializable()
@CopyWith()
class PlaceDetailsFilter extends BaseSessionFilter<PlaceDetailsFilter> {
  PlaceDetailsFilter({
    super.languageCode,
    super.regionCode,
    super.sessionToken,
  });

  factory PlaceDetailsFilter.fromJson(Map<String, dynamic> json) {
    return _$PlaceDetailsFilterFromJson(json);
  }

  @override
  PlaceDetailsFilter? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PlaceDetailsFilter.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceDetailsFilterToJson(this);
  }
}
