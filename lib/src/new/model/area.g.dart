// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Area] is to generate the code for a copyWith(...) function.
extension $AreaCopyWithExtension on Area {
  Area copyWith({
    String? name,
    String? placeId,
    LocalizedText? displayName,
    Containment? containment,
  }) {
    return Area(
      name: name ?? this.name,
      placeId: placeId ?? this.placeId,
      displayName: displayName ?? this.displayName,
      containment: containment ?? this.containment,
    );
  }
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
