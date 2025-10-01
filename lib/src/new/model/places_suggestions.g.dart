// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_suggestions.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlacesSuggestionsCWProxy {
  PlacesSuggestions suggestions(List<Suggestion>? suggestions);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PlacesSuggestions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PlacesSuggestions(...).copyWith(id: 12, name: "My name")
  /// ```
  PlacesSuggestions call({List<Suggestion>? suggestions});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPlacesSuggestions.copyWith(...)` or call `instanceOfPlacesSuggestions.copyWith.fieldName(value)` for a single field.
class _$PlacesSuggestionsCWProxyImpl implements _$PlacesSuggestionsCWProxy {
  const _$PlacesSuggestionsCWProxyImpl(this._value);

  final PlacesSuggestions _value;

  @override
  PlacesSuggestions suggestions(List<Suggestion>? suggestions) =>
      call(suggestions: suggestions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PlacesSuggestions(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PlacesSuggestions(...).copyWith(id: 12, name: "My name")
  /// ```
  PlacesSuggestions call({Object? suggestions = const $CopyWithPlaceholder()}) {
    return PlacesSuggestions(
      suggestions: suggestions == const $CopyWithPlaceholder()
          ? _value.suggestions
          // ignore: cast_nullable_to_non_nullable
          : suggestions as List<Suggestion>?,
    );
  }
}

extension $PlacesSuggestionsCopyWith on PlacesSuggestions {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPlacesSuggestions.copyWith(...)` or `instanceOfPlacesSuggestions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlacesSuggestionsCWProxy get copyWith =>
      _$PlacesSuggestionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesSuggestions _$PlacesSuggestionsFromJson(Map<String, dynamic> json) =>
    PlacesSuggestions(
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => Suggestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlacesSuggestionsToJson(PlacesSuggestions instance) =>
    <String, dynamic>{'suggestions': instance.suggestions};
