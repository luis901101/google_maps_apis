// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_block.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContentBlockCWProxy {
  ContentBlock topic(String? topic);

  ContentBlock content(LocalizedText? content);

  ContentBlock references(References? references);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ContentBlock(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ContentBlock(...).copyWith(id: 12, name: "My name")
  /// ```
  ContentBlock call({
    String? topic,
    LocalizedText? content,
    References? references,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfContentBlock.copyWith(...)` or call `instanceOfContentBlock.copyWith.fieldName(value)` for a single field.
class _$ContentBlockCWProxyImpl implements _$ContentBlockCWProxy {
  const _$ContentBlockCWProxyImpl(this._value);

  final ContentBlock _value;

  @override
  ContentBlock topic(String? topic) => call(topic: topic);

  @override
  ContentBlock content(LocalizedText? content) => call(content: content);

  @override
  ContentBlock references(References? references) =>
      call(references: references);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ContentBlock(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ContentBlock(...).copyWith(id: 12, name: "My name")
  /// ```
  ContentBlock call({
    Object? topic = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? references = const $CopyWithPlaceholder(),
  }) {
    return ContentBlock(
      topic: topic == const $CopyWithPlaceholder()
          ? _value.topic
          // ignore: cast_nullable_to_non_nullable
          : topic as String?,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as LocalizedText?,
      references: references == const $CopyWithPlaceholder()
          ? _value.references
          // ignore: cast_nullable_to_non_nullable
          : references as References?,
    );
  }
}

extension $ContentBlockCopyWith on ContentBlock {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfContentBlock.copyWith(...)` or `instanceOfContentBlock.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ContentBlockCWProxy get copyWith => _$ContentBlockCWProxyImpl(this);
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
