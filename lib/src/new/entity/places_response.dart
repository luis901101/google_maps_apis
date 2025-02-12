import 'package:google_maps_apis/src/new/entity/place_details.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'places_response.g.dart';

@JsonSerializable()
@CopyWith()
class PlacesResponse extends Jsonable<PlacesResponse> {
  final List<PlaceDetails> places;

  PlacesResponse({List<PlaceDetails>? places})
      : places = places ?? <PlaceDetails>[];

  factory PlacesResponse.fromJson(Map<String, dynamic> json) {
    return _$PlacesResponseFromJson(json);
  }

  @override
  PlacesResponse? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PlacesResponse.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlacesResponseToJson(this);
  }
}
