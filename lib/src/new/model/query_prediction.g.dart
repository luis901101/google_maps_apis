// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_prediction.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [QueryPrediction] is to generate the code for a copyWith(...) function.
extension $QueryPredictionCopyWithExtension on QueryPrediction {
  QueryPrediction copyWith({
    FormattableText? text,
    StructuredFormat? structuredFormat,
  }) {
    return QueryPrediction(
      text: text ?? this.text,
      structuredFormat: structuredFormat ?? this.structuredFormat,
    );
  }
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
