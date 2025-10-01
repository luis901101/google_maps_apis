// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'references.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReferencesCWProxy {
  References reviews(List<Review>? reviews);

  References places(List<String>? places);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `References(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// References(...).copyWith(id: 12, name: "My name")
  /// ```
  References call({List<Review>? reviews, List<String>? places});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReferences.copyWith(...)` or call `instanceOfReferences.copyWith.fieldName(value)` for a single field.
class _$ReferencesCWProxyImpl implements _$ReferencesCWProxy {
  const _$ReferencesCWProxyImpl(this._value);

  final References _value;

  @override
  References reviews(List<Review>? reviews) => call(reviews: reviews);

  @override
  References places(List<String>? places) => call(places: places);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `References(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// References(...).copyWith(id: 12, name: "My name")
  /// ```
  References call({
    Object? reviews = const $CopyWithPlaceholder(),
    Object? places = const $CopyWithPlaceholder(),
  }) {
    return References(
      reviews: reviews == const $CopyWithPlaceholder()
          ? _value.reviews
          // ignore: cast_nullable_to_non_nullable
          : reviews as List<Review>?,
      places: places == const $CopyWithPlaceholder()
          ? _value.places
          // ignore: cast_nullable_to_non_nullable
          : places as List<String>?,
    );
  }
}

extension $ReferencesCopyWith on References {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReferences.copyWith(...)` or `instanceOfReferences.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReferencesCWProxy get copyWith => _$ReferencesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

References _$ReferencesFromJson(Map<String, dynamic> json) => References(
  reviews: (json['reviews'] as List<dynamic>?)
      ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
      .toList(),
  places: (json['places'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ReferencesToJson(References instance) =>
    <String, dynamic>{'reviews': ?instance.reviews, 'places': ?instance.places};
