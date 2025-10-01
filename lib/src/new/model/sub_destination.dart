import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_destination.g.dart';

/// Place resource name and id of sub destinations that relate to the place.
/// For example, different terminals are different destinations of an airport.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#subdestination
@JsonSerializable()
@CopyWith()
class SubDestination extends Jsonable<SubDestination> {
  /// The resource name of the sub destination.
  final String? name;

  /// The place id of the sub destination.
  final String? id;

  SubDestination({this.name, this.id});

  factory SubDestination.fromJson(Map<String, dynamic> json) {
    return _$SubDestinationFromJson(json);
  }

  @override
  SubDestination? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? SubDestination.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$SubDestinationToJson(this);
  }
}
