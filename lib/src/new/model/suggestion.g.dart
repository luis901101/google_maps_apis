// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Suggestion] is to generate the code for a copyWith(...) function.
extension $SuggestionCopyWithExtension on Suggestion {
  Suggestion copyWith({
    PlacePrediction? placePrediction,
    QueryPrediction? queryPrediction,
  }) {
    return Suggestion(
      placePrediction: placePrediction ?? this.placePrediction,
      queryPrediction: queryPrediction ?? this.queryPrediction,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Suggestion _$SuggestionFromJson(Map<String, dynamic> json) => Suggestion(
  placePrediction: json['placePrediction'] == null
      ? null
      : PlacePrediction.fromJson(
          json['placePrediction'] as Map<String, dynamic>,
        ),
  queryPrediction: json['queryPrediction'] == null
      ? null
      : QueryPrediction.fromJson(
          json['queryPrediction'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$SuggestionToJson(Suggestion instance) =>
    <String, dynamic>{
      'placePrediction': ?instance.placePrediction,
      'queryPrediction': ?instance.queryPrediction,
    };
