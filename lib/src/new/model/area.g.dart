// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AreaCWProxy {
  Area name(String? name);

  Area placeId(String? placeId);

  Area displayName(LocalizedText? displayName);

  Area containment(Containment? containment);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Area(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Area(...).copyWith(id: 12, name: "My name")
  /// ```
  Area call({
    String? name,
    String? placeId,
    LocalizedText? displayName,
    Containment? containment,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfArea.copyWith(...)` or call `instanceOfArea.copyWith.fieldName(value)` for a single field.
class _$AreaCWProxyImpl implements _$AreaCWProxy {
  const _$AreaCWProxyImpl(this._value);

  final Area _value;

  @override
  Area name(String? name) => call(name: name);

  @override
  Area placeId(String? placeId) => call(placeId: placeId);

  @override
  Area displayName(LocalizedText? displayName) =>
      call(displayName: displayName);

  @override
  Area containment(Containment? containment) => call(containment: containment);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Area(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Area(...).copyWith(id: 12, name: "My name")
  /// ```
  Area call({
    Object? name = const $CopyWithPlaceholder(),
    Object? placeId = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? containment = const $CopyWithPlaceholder(),
  }) {
    return Area(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      placeId: placeId == const $CopyWithPlaceholder()
          ? _value.placeId
          // ignore: cast_nullable_to_non_nullable
          : placeId as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as LocalizedText?,
      containment: containment == const $CopyWithPlaceholder()
          ? _value.containment
          // ignore: cast_nullable_to_non_nullable
          : containment as Containment?,
    );
  }
}

extension $AreaCopyWith on Area {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfArea.copyWith(...)` or `instanceOfArea.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AreaCWProxy get copyWith => _$AreaCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Area _$AreaFromJson(Map<String, dynamic> json) => Area(
  name: json['name'] as String?,
  placeId: json['placeId'] as String?,
  displayName: json['displayName'] == null
      ? null
      : LocalizedText.fromJson(json['displayName'] as Map<String, dynamic>),
  containment: $enumDecodeNullable(_$ContainmentEnumMap, json['containment']),
);

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
  'name': ?instance.name,
  'placeId': ?instance.placeId,
  'displayName': ?instance.displayName,
  'containment': ?_$ContainmentEnumMap[instance.containment],
};

const _$ContainmentEnumMap = {
  Containment.containmentUnspecified: 'CONTAINMENT_UNSPECIFIED',
  Containment.within: 'WITHIN',
  Containment.outskirts: 'OUTSKIRTS',
  Containment.near: 'NEAR',
};
