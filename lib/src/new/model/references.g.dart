// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'references.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [References] is to generate the code for a copyWith(...) function.
extension $ReferencesCopyWithExtension on References {
  References copyWith({List<Review>? reviews, List<String>? places}) {
    return References(
      reviews:
          ((reviews?.isNotEmpty ?? false) ? reviews : null) ?? this.reviews,
      places: ((places?.isNotEmpty ?? false) ? places : null) ?? this.places,
    );
  }
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
