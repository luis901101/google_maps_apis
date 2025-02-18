// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SuggestionCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Suggestion(...).copyWith(id: 12, name: "My name")
  /// ````
  Suggestion call({
    PlacePrediction? placePrediction,
    QueryPrediction? queryPrediction,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSuggestion.copyWith(...)`.
class _$SuggestionCWProxyImpl implements _$SuggestionCWProxy {
  const _$SuggestionCWProxyImpl(this._value);

  final Suggestion _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Suggestion(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfSuggestion.copyWith(...)`.
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
              json['placePrediction'] as Map<String, dynamic>),
      queryPrediction: json['queryPrediction'] == null
          ? null
          : QueryPrediction.fromJson(
              json['queryPrediction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuggestionToJson(Suggestion instance) =>
    <String, dynamic>{
      if (instance.placePrediction case final value?) 'placePrediction': value,
      if (instance.queryPrediction case final value?) 'queryPrediction': value,
    };
