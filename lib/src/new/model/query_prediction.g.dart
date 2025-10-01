// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_prediction.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueryPredictionCWProxy {
  QueryPrediction text(FormattableText? text);

  QueryPrediction structuredFormat(StructuredFormat? structuredFormat);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `QueryPrediction(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// QueryPrediction(...).copyWith(id: 12, name: "My name")
  /// ```
  QueryPrediction call({
    FormattableText? text,
    StructuredFormat? structuredFormat,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfQueryPrediction.copyWith(...)` or call `instanceOfQueryPrediction.copyWith.fieldName(value)` for a single field.
class _$QueryPredictionCWProxyImpl implements _$QueryPredictionCWProxy {
  const _$QueryPredictionCWProxyImpl(this._value);

  final QueryPrediction _value;

  @override
  QueryPrediction text(FormattableText? text) => call(text: text);

  @override
  QueryPrediction structuredFormat(StructuredFormat? structuredFormat) =>
      call(structuredFormat: structuredFormat);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `QueryPrediction(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// QueryPrediction(...).copyWith(id: 12, name: "My name")
  /// ```
  QueryPrediction call({
    Object? text = const $CopyWithPlaceholder(),
    Object? structuredFormat = const $CopyWithPlaceholder(),
  }) {
    return QueryPrediction(
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as FormattableText?,
      structuredFormat: structuredFormat == const $CopyWithPlaceholder()
          ? _value.structuredFormat
          // ignore: cast_nullable_to_non_nullable
          : structuredFormat as StructuredFormat?,
    );
  }
}

extension $QueryPredictionCopyWith on QueryPrediction {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfQueryPrediction.copyWith(...)` or `instanceOfQueryPrediction.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueryPredictionCWProxy get copyWith => _$QueryPredictionCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryPrediction _$QueryPredictionFromJson(Map<String, dynamic> json) =>
    QueryPrediction(
      text: json['text'] == null
          ? null
          : FormattableText.fromJson(json['text'] as Map<String, dynamic>),
      structuredFormat: json['structuredFormat'] == null
          ? null
          : StructuredFormat.fromJson(
              json['structuredFormat'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$QueryPredictionToJson(QueryPrediction instance) =>
    <String, dynamic>{
      'text': ?instance.text,
      'structuredFormat': ?instance.structuredFormat,
    };
