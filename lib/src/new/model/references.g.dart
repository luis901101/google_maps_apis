// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'references.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReferencesCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// References(...).copyWith(id: 12, name: "My name")
  /// ````
  References call({
    List<Review>? reviews,
    List<String>? places,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReferences.copyWith(...)`.
class _$ReferencesCWProxyImpl implements _$ReferencesCWProxy {
  const _$ReferencesCWProxyImpl(this._value);

  final References _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// References(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfReferences.copyWith(...)`.
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
      places:
          (json['places'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ReferencesToJson(References instance) =>
    <String, dynamic>{
      if (instance.reviews case final value?) 'reviews': value,
      if (instance.places case final value?) 'places': value,
    };
