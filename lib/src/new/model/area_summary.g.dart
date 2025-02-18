// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AreaSummaryCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// AreaSummary(...).copyWith(id: 12, name: "My name")
  /// ````
  AreaSummary call({
    List<ContentBlock>? contentBlocks,
    String? flagContentUri,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAreaSummary.copyWith(...)`.
class _$AreaSummaryCWProxyImpl implements _$AreaSummaryCWProxy {
  const _$AreaSummaryCWProxyImpl(this._value);

  final AreaSummary _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// AreaSummary(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfAreaSummary.copyWith(...)`.
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
      if (instance.contentBlocks case final value?) 'contentBlocks': value,
      if (instance.flagContentUri case final value?) 'flagContentUri': value,
    };
