// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generative_summary.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GenerativeSummaryCWProxy {
  GenerativeSummary overview(LocalizedText? overview);

  GenerativeSummary overviewFlagContentUri(String? overviewFlagContentUri);

  GenerativeSummary description(LocalizedText? description);

  GenerativeSummary descriptionFlagContentUri(
    String? descriptionFlagContentUri,
  );

  GenerativeSummary references(References? references);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GenerativeSummary(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GenerativeSummary(...).copyWith(id: 12, name: "My name")
  /// ```
  GenerativeSummary call({
    LocalizedText? overview,
    String? overviewFlagContentUri,
    LocalizedText? description,
    String? descriptionFlagContentUri,
    References? references,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGenerativeSummary.copyWith(...)` or call `instanceOfGenerativeSummary.copyWith.fieldName(value)` for a single field.
class _$GenerativeSummaryCWProxyImpl implements _$GenerativeSummaryCWProxy {
  const _$GenerativeSummaryCWProxyImpl(this._value);

  final GenerativeSummary _value;

  @override
  GenerativeSummary overview(LocalizedText? overview) =>
      call(overview: overview);

  @override
  GenerativeSummary overviewFlagContentUri(String? overviewFlagContentUri) =>
      call(overviewFlagContentUri: overviewFlagContentUri);

  @override
  GenerativeSummary description(LocalizedText? description) =>
      call(description: description);

  @override
  GenerativeSummary descriptionFlagContentUri(
    String? descriptionFlagContentUri,
  ) => call(descriptionFlagContentUri: descriptionFlagContentUri);

  @override
  GenerativeSummary references(References? references) =>
      call(references: references);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GenerativeSummary(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GenerativeSummary(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGenerativeSummary.copyWith(...)` or `instanceOfGenerativeSummary.copyWith.fieldName(...)`.
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
      'overview': ?instance.overview,
      'overviewFlagContentUri': ?instance.overviewFlagContentUri,
      'description': ?instance.description,
      'descriptionFlagContentUri': ?instance.descriptionFlagContentUri,
      'references': ?instance.references,
    };
