import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/localized_text.dart';
import 'package:google_maps_apis/src/new/model/references.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content_block.g.dart';

/// A block of content that can be served individually.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#contentblock
@JsonSerializable()
@CopyWith()
class ContentBlock extends Jsonable<ContentBlock> {
  /// The topic of the content, for example "overview" or "restaurant".
  final String? topic;

  /// Content related to the topic.
  final LocalizedText? content;

  /// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
  ///
  /// References that are related to this block of content.
  final References? references;

  ContentBlock({this.topic, this.content, this.references});

  factory ContentBlock.fromJson(Map<String, dynamic> json) {
    return _$ContentBlockFromJson(json);
  }

  @override
  ContentBlock? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? ContentBlock.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ContentBlockToJson(this);
  }
}
