import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:adeptannotations/adeptannotations.dart';

part 'reference_point.g.dart';

@JsonSerializable()
@CopyWith()
class ReferencePoint extends Jsonable<ReferencePoint> {
  final double latitude;
  final double longitude;

  ReferencePoint({required this.latitude, required this.longitude});

  factory ReferencePoint.fromJson(Map<String, dynamic> json) {
    return _$ReferencePointFromJson(json);
  }

  @override
  ReferencePoint? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? ReferencePoint.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ReferencePointToJson(this);
  }
}
