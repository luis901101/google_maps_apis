// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generative_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GenerativeSummaryCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// GenerativeSummary(...).copyWith(id: 12, name: "My name")
  /// ````
  GenerativeSummary call({
    LocalizedText? overview,
    String? overviewFlagContentUri,
    LocalizedText? description,
    String? descriptionFlagContentUri,
    References? references,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGenerativeSummary.copyWith(...)`.
class _$GenerativeSummaryCWProxyImpl implements _$GenerativeSummaryCWProxy {
  const _$GenerativeSummaryCWProxyImpl(this._value);

  final GenerativeSummary _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// GenerativeSummary(...).copyWith(id: 12, name: "My name")
  /// ````
  GenerativeSummary call({
    Object? overview = const $CopyWithPlaceholder(),
    Object? overviewFlagContentUri = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? descriptionFlagContentUri = const $CopyWithPlaceholder(),
    Object? references = const $CopyWithPlaceholder(),
  }) {
    return GenerativeSummary(
      overview: overview == const $CopyWithPlaceholder()
          ? _value.overview
          // ignore: cast_nullable_to_non_nullable
          : overview as LocalizedText?,
      overviewFlagContentUri:
          overviewFlagContentUri == const $CopyWithPlaceholder()
              ? _value.overviewFlagContentUri
              // ignore: cast_nullable_to_non_nullable
              : overviewFlagContentUri as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as LocalizedText?,
      descriptionFlagContentUri:
          descriptionFlagContentUri == const $CopyWithPlaceholder()
              ? _value.descriptionFlagContentUri
              // ignore: cast_nullable_to_non_nullable
              : descriptionFlagContentUri as String?,
      references: references == const $CopyWithPlaceholder()
          ? _value.references
          // ignore: cast_nullable_to_non_nullable
          : references as References?,
    );
  }
}

extension $GenerativeSummaryCopyWith on GenerativeSummary {
  /// Returns a callable class that can be used as follows: `instanceOfGenerativeSummary.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$GenerativeSummaryCWProxy get copyWith =>
      _$GenerativeSummaryCWProxyImpl(this);
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
      if (instance.overview case final value?) 'overview': value,
      if (instance.overviewFlagContentUri case final value?)
        'overviewFlagContentUri': value,
      if (instance.description case final value?) 'description': value,
      if (instance.descriptionFlagContentUri case final value?)
        'descriptionFlagContentUri': value,
      if (instance.references case final value?) 'references': value,
    };
