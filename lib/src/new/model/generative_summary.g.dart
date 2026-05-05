// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generative_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [GenerativeSummary] is to generate the code for a copyWith(...) function.
extension $GenerativeSummaryCopyWithExtension on GenerativeSummary {
  GenerativeSummary copyWith({
    LocalizedText? overview,
    String? overviewFlagContentUri,
    LocalizedText? description,
    String? descriptionFlagContentUri,
    References? references,
  }) {
    return GenerativeSummary(
      overview: overview ?? this.overview,
      overviewFlagContentUri:
          overviewFlagContentUri ?? this.overviewFlagContentUri,
      description: description ?? this.description,
      descriptionFlagContentUri:
          descriptionFlagContentUri ?? this.descriptionFlagContentUri,
      references: references ?? this.references,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerativeSummary _$GenerativeSummaryFromJson(Map<String, dynamic> json) =>
    GenerativeSummary(
      overview: json['overview'] == null
          ? null
          : LocalizedText.fromJson(json['overview'] as Map<String, dynamic>),
      overviewFlagContentUri: json['overviewFlagContentUri'] as String?,
      description: json['description'] == null
          ? null
          : LocalizedText.fromJson(json['description'] as Map<String, dynamic>),
      descriptionFlagContentUri: json['descriptionFlagContentUri'] as String?,
      references: json['references'] == null
          ? null
          : References.fromJson(json['references'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerativeSummaryToJson(GenerativeSummary instance) =>
    <String, dynamic>{
      'overview': ?instance.overview,
      'overviewFlagContentUri': ?instance.overviewFlagContentUri,
      'description': ?instance.description,
      'descriptionFlagContentUri': ?instance.descriptionFlagContentUri,
      'references': ?instance.references,
    };
