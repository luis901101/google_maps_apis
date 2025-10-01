import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/area.dart';
import 'package:google_maps_apis/src/new/model/landmark.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_descriptor.g.dart';

/// A relational description of a location. Includes a ranked set of nearby landmarks and precise containing areas and their relationship to the target location.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#addressdescriptor
@JsonSerializable()
@CopyWith()
class AddressDescriptor extends Jsonable<AddressDescriptor> {
  /// A ranked list of nearby landmarks. The most recognizable and nearby landmarks are ranked first.
  final List<Landmark>? landmarks;

  /// A ranked list of containing or adjacent areas. The most recognizable and precise areas are ranked first.
  final List<Area>? areas;

  AddressDescriptor({this.landmarks, this.areas});

  factory AddressDescriptor.fromJson(Map<String, dynamic> json) {
    return _$AddressDescriptorFromJson(json);
  }

  @override
  AddressDescriptor? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AddressDescriptor.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AddressDescriptorToJson(this);
  }
}
