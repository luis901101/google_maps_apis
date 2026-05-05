// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [AreaSummary] is to generate the code for a copyWith(...) function.
extension $AreaSummaryCopyWithExtension on AreaSummary {
  AreaSummary copyWith({
    List<ContentBlock>? contentBlocks,
    String? flagContentUri,
  }) {
    return AreaSummary(
      contentBlocks:
          ((contentBlocks?.isNotEmpty ?? false) ? contentBlocks : null) ??
          this.contentBlocks,
      flagContentUri: flagContentUri ?? this.flagContentUri,
    );
  }
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
