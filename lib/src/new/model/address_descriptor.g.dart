// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_descriptor.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [AddressDescriptor] is to generate the code for a copyWith(...) function.
extension $AddressDescriptorCopyWithExtension on AddressDescriptor {
  AddressDescriptor copyWith({List<Landmark>? landmarks, List<Area>? areas}) {
    return AddressDescriptor(
      landmarks:
          ((landmarks?.isNotEmpty ?? false) ? landmarks : null) ??
          this.landmarks,
      areas: ((areas?.isNotEmpty ?? false) ? areas : null) ?? this.areas,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressDescriptor _$AddressDescriptorFromJson(Map<String, dynamic> json) =>
    AddressDescriptor(
      landmarks: (json['landmarks'] as List<dynamic>?)
          ?.map((e) => Landmark.fromJson(e as Map<String, dynamic>))
          .toList(),
      areas: (json['areas'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddressDescriptorToJson(AddressDescriptor instance) =>
    <String, dynamic>{
      'landmarks': ?instance.landmarks,
      'areas': ?instance.areas,
    };
