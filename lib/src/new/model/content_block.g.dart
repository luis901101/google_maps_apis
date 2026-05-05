// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_block.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [ContentBlock] is to generate the code for a copyWith(...) function.
extension $ContentBlockCopyWithExtension on ContentBlock {
  ContentBlock copyWith({
    String? topic,
    LocalizedText? content,
    References? references,
  }) {
    return ContentBlock(
      topic: topic ?? this.topic,
      content: content ?? this.content,
      references: references ?? this.references,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentBlock _$ContentBlockFromJson(Map<String, dynamic> json) => ContentBlock(
  topic: json['topic'] as String?,
  content: json['content'] == null
      ? null
      : LocalizedText.fromJson(json['content'] as Map<String, dynamic>),
  references: json['references'] == null
      ? null
      : References.fromJson(json['references'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ContentBlockToJson(ContentBlock instance) =>
    <String, dynamic>{
      'topic': ?instance.topic,
      'content': ?instance.content,
      'references': ?instance.references,
    };
