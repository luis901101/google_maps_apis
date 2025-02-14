import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'containing_place.g.dart';

/// Info about the place in which this place is located.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#containingplace
@JsonSerializable()
@CopyWith()
class ContainingPlace extends Jsonable<ContainingPlace> {
  final String? name;
  final String? id;

  ContainingPlace({
    this.name,
    this.id,
  });

  factory ContainingPlace.fromJson(Map<String, dynamic> json) {
    return _$ContainingPlaceFromJson(json);
  }

  @override
  ContainingPlace? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? ContainingPlace.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ContainingPlaceToJson(this);
  }
}
