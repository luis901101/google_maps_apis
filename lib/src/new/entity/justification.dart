import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'justification.g.dart';

/// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
///
/// Justifications for the place. Justifications answers the question of why a
/// place could interest an end user.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/searchText#justification
@JsonSerializable()
@CopyWith()
class Justification extends Jsonable<Justification> {
  final dynamic reviewJustification;
  final dynamic businessAvailabilityAttributesJustification;

  Justification({
    this.reviewJustification,
    this.businessAvailabilityAttributesJustification,
  });

  factory Justification.fromJson(Map<String, dynamic> json) {
    return _$JustificationFromJson(json);
  }

  @override
  Justification? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Justification.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$JustificationToJson(this);
  }
}
