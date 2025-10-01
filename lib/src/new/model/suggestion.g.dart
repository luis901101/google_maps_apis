// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SuggestionCWProxy {
  Suggestion placePrediction(PlacePrediction? placePrediction);

  Suggestion queryPrediction(QueryPrediction? queryPrediction);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Suggestion(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Suggestion(...).copyWith(id: 12, name: "My name")
  /// ```
  Suggestion call({
    PlacePrediction? placePrediction,
    QueryPrediction? queryPrediction,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSuggestion.copyWith(...)` or call `instanceOfSuggestion.copyWith.fieldName(value)` for a single field.
class _$SuggestionCWProxyImpl implements _$SuggestionCWProxy {
  const _$SuggestionCWProxyImpl(this._value);

  final Suggestion _value;

  @override
  Suggestion placePrediction(PlacePrediction? placePrediction) =>
      call(placePrediction: placePrediction);

  @override
  Suggestion queryPrediction(QueryPrediction? queryPrediction) =>
      call(queryPrediction: queryPrediction);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Suggestion(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Suggestion(...).copyWith(id: 12, name: "My name")
  /// ```
  Suggestion call({
    Object? placePrediction = const $CopyWithPlaceholder(),
    Object? queryPrediction = const $CopyWithPlaceholder(),
  }) {
    return Suggestion(
      placePrediction: placePrediction == const $CopyWithPlaceholder()
          ? _value.placePrediction
          // ignore: cast_nullable_to_non_nullable
          : placePrediction as PlacePrediction?,
      queryPrediction: queryPrediction == const $CopyWithPlaceholder()
          ? _value.queryPrediction
          // ignore: cast_nullable_to_non_nullable
          : queryPrediction as QueryPrediction?,
    );
  }
}

extension $SuggestionCopyWith on Suggestion {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSuggestion.copyWith(...)` or `instanceOfSuggestion.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SuggestionCWProxy get copyWith => _$SuggestionCWProxyImpl(this);
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
