import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'coordinates.g.dart';

@JsonSerializable()
@CopyWith()
class Coordinates extends Jsonable<Coordinates> {
  final double latitude;
  final double longitude;

  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return _$CoordinatesFromJson(json);
  }

  @override
  Coordinates? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Coordinates.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$CoordinatesToJson(this);
  }
}
