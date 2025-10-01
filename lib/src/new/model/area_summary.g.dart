// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AreaSummaryCWProxy {
  AreaSummary contentBlocks(List<ContentBlock>? contentBlocks);

  AreaSummary flagContentUri(String? flagContentUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AreaSummary(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AreaSummary(...).copyWith(id: 12, name: "My name")
  /// ```
  AreaSummary call({List<ContentBlock>? contentBlocks, String? flagContentUri});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAreaSummary.copyWith(...)` or call `instanceOfAreaSummary.copyWith.fieldName(value)` for a single field.
class _$AreaSummaryCWProxyImpl implements _$AreaSummaryCWProxy {
  const _$AreaSummaryCWProxyImpl(this._value);

  final AreaSummary _value;

  @override
  AreaSummary contentBlocks(List<ContentBlock>? contentBlocks) =>
      call(contentBlocks: contentBlocks);

  @override
  AreaSummary flagContentUri(String? flagContentUri) =>
      call(flagContentUri: flagContentUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AreaSummary(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AreaSummary(...).copyWith(id: 12, name: "My name")
  /// ```
  AreaSummary call({
    Object? contentBlocks = const $CopyWithPlaceholder(),
    Object? flagContentUri = const $CopyWithPlaceholder(),
  }) {
    return AreaSummary(
      contentBlocks: contentBlocks == const $CopyWithPlaceholder()
          ? _value.contentBlocks
          // ignore: cast_nullable_to_non_nullable
          : contentBlocks as List<ContentBlock>?,
      flagContentUri: flagContentUri == const $CopyWithPlaceholder()
          ? _value.flagContentUri
          // ignore: cast_nullable_to_non_nullable
          : flagContentUri as String?,
    );
  }
}

extension $AreaSummaryCopyWith on AreaSummary {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAreaSummary.copyWith(...)` or `instanceOfAreaSummary.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AreaSummaryCWProxy get copyWith => _$AreaSummaryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaSummary _$AreaSummaryFromJson(Map<String, dynamic> json) => AreaSummary(
  contentBlocks: (json['contentBlocks'] as List<dynamic>?)
      ?.map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  flagContentUri: json['flagContentUri'] as String?,
);

Map<String, dynamic> _$AreaSummaryToJson(AreaSummary instance) =>
    <String, dynamic>{
      'contentBlocks': ?instance.contentBlocks,
      'flagContentUri': ?instance.flagContentUri,
    };
