// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlacesResponseCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlacesResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PlacesResponse call({
    List<PlaceDetails>? places,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlacesResponse.copyWith(...)`.
class _$PlacesResponseCWProxyImpl implements _$PlacesResponseCWProxy {
  const _$PlacesResponseCWProxyImpl(this._value);

  final PlacesResponse _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlacesResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PlacesResponse call({
    Object? places = const $CopyWithPlaceholder(),
  }) {
    return PlacesResponse(
      places: places == const $CopyWithPlaceholder()
          ? _value.places
          // ignore: cast_nullable_to_non_nullable
          : places as List<PlaceDetails>?,
    );
  }
}

extension $PlacesResponseCopyWith on PlacesResponse {
  /// Returns a callable class that can be used as follows: `instanceOfPlacesResponse.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$PlacesResponseCWProxy get copyWith => _$PlacesResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) =>
    PlacesResponse(
      places: (json['places'] as List<dynamic>?)
          ?.map((e) => PlaceDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlacesResponseToJson(PlacesResponse instance) =>
    <String, dynamic>{
      'places': instance.places,
    };
