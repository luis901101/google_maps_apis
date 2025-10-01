import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'author_attribution.g.dart';

/// Information about the author of the UGC data. Used in [Photo], and [Review].
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#authorattribution
@JsonSerializable()
@CopyWith()
class AuthorAttribution extends Jsonable<AuthorAttribution> {
  /// Name of the author of the Photo or Review.
  final String? displayName;

  /// URI of the author of the Photo or Review.
  final String? uri;

  /// Profile photo URI of the author of the Photo or Review.
  final String? photoUri;

  AuthorAttribution({this.displayName, this.uri, this.photoUri});

  factory AuthorAttribution.fromJson(Map<String, dynamic> json) {
    return _$AuthorAttributionFromJson(json);
  }

  @override
  AuthorAttribution? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AuthorAttribution.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthorAttributionToJson(this);
  }
}
