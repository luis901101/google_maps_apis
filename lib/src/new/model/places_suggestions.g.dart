// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_suggestions.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlacesSuggestionsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlacesSuggestions(...).copyWith(id: 12, name: "My name")
  /// ````
  PlacesSuggestions call({
    List<Suggestion>? suggestions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlacesSuggestions.copyWith(...)`.
class _$PlacesSuggestionsCWProxyImpl implements _$PlacesSuggestionsCWProxy {
  const _$PlacesSuggestionsCWProxyImpl(this._value);

  final PlacesSuggestions _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlacesSuggestions(...).copyWith(id: 12, name: "My name")
  /// ````
  PlacesSuggestions call({
    Object? suggestions = const $CopyWithPlaceholder(),
  }) {
    return PlacesSuggestions(
      suggestions: suggestions == const $CopyWithPlaceholder()
          ? _value.suggestions
          // ignore: cast_nullable_to_non_nullable
          : suggestions as List<Suggestion>?,
    );
  }
}

extension $PlacesSuggestionsCopyWith on PlacesSuggestions {
  /// Returns a callable class that can be used as follows: `instanceOfPlacesSuggestions.copyWith(...)`.
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
    <String, dynamic>{
      'suggestions': instance.suggestions,
    };
