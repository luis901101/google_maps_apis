// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_block.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContentBlockCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ContentBlock(...).copyWith(id: 12, name: "My name")
  /// ````
  ContentBlock call({
    String? topic,
    LocalizedText? content,
    References? references,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfContentBlock.copyWith(...)`.
class _$ContentBlockCWProxyImpl implements _$ContentBlockCWProxy {
  const _$ContentBlockCWProxyImpl(this._value);

  final ContentBlock _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ContentBlock(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfContentBlock.copyWith(...)`.
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
      if (instance.topic case final value?) 'topic': value,
      if (instance.content case final value?) 'content': value,
      if (instance.references case final value?) 'references': value,
    };
