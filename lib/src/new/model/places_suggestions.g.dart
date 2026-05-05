// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_suggestions.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [PlacesSuggestions] is to generate the code for a copyWith(...) function.
extension $PlacesSuggestionsCopyWithExtension on PlacesSuggestions {
  PlacesSuggestions copyWith({List<Suggestion>? suggestions}) {
    return PlacesSuggestions(
      suggestions:
          ((suggestions?.isNotEmpty ?? false) ? suggestions : null) ??
          this.suggestions,
    );
  }
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
