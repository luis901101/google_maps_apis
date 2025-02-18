// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AreaCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Area(...).copyWith(id: 12, name: "My name")
  /// ````
  Area call({
    String? name,
    String? placeId,
    LocalizedText? displayName,
    Containment? containment,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfArea.copyWith(...)`.
class _$AreaCWProxyImpl implements _$AreaCWProxy {
  const _$AreaCWProxyImpl(this._value);

  final Area _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Area(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfArea.copyWith(...)`.
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
      containment:
          $enumDecodeNullable(_$ContainmentEnumMap, json['containment']),
    );

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.placeId case final value?) 'placeId': value,
      if (instance.displayName case final value?) 'displayName': value,
      if (_$ContainmentEnumMap[instance.containment] case final value?)
        'containment': value,
    };

const _$ContainmentEnumMap = {
  Containment.containmentUnspecified: 'CONTAINMENT_UNSPECIFIED',
  Containment.within: 'WITHIN',
  Containment.outskirts: 'OUTSKIRTS',
  Containment.near: 'NEAR',
};
