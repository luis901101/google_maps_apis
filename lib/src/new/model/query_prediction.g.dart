// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_prediction.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueryPredictionCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// QueryPrediction(...).copyWith(id: 12, name: "My name")
  /// ````
  QueryPrediction call({
    FormattableText? text,
    StructuredFormat? structuredFormat,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueryPrediction.copyWith(...)`.
class _$QueryPredictionCWProxyImpl implements _$QueryPredictionCWProxy {
  const _$QueryPredictionCWProxyImpl(this._value);

  final QueryPrediction _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// QueryPrediction(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfQueryPrediction.copyWith(...)`.
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
              json['structuredFormat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryPredictionToJson(QueryPrediction instance) =>
    <String, dynamic>{
      if (instance.text case final value?) 'text': value,
      if (instance.structuredFormat case final value?)
        'structuredFormat': value,
    };
