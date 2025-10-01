import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attribution.g.dart';

/// Information about data providers of this place.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#attribution
@JsonSerializable()
@CopyWith()
class Attribution extends Jsonable<Attribution> {
  /// Name of the Place's data provider.
  final String? provider;

  /// URI to the Place's data provider.
  final String? providerUri;

  Attribution({this.provider, this.providerUri});

  factory Attribution.fromJson(Map<String, dynamic> json) {
    return _$AttributionFromJson(json);
  }

  @override
  Attribution? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Attribution.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AttributionToJson(this);
  }
}
