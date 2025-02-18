// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_descriptor.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddressDescriptorCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// AddressDescriptor(...).copyWith(id: 12, name: "My name")
  /// ````
  AddressDescriptor call({
    List<Landmark>? landmarks,
    List<Area>? areas,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddressDescriptor.copyWith(...)`.
class _$AddressDescriptorCWProxyImpl implements _$AddressDescriptorCWProxy {
  const _$AddressDescriptorCWProxyImpl(this._value);

  final AddressDescriptor _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// AddressDescriptor(...).copyWith(id: 12, name: "My name")
  /// ````
  AddressDescriptor call({
    Object? landmarks = const $CopyWithPlaceholder(),
    Object? areas = const $CopyWithPlaceholder(),
  }) {
    return AddressDescriptor(
      landmarks: landmarks == const $CopyWithPlaceholder()
          ? _value.landmarks
          // ignore: cast_nullable_to_non_nullable
          : landmarks as List<Landmark>?,
      areas: areas == const $CopyWithPlaceholder()
          ? _value.areas
          // ignore: cast_nullable_to_non_nullable
          : areas as List<Area>?,
    );
  }
}

extension $AddressDescriptorCopyWith on AddressDescriptor {
  /// Returns a callable class that can be used as follows: `instanceOfAddressDescriptor.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$AddressDescriptorCWProxy get copyWith =>
      _$AddressDescriptorCWProxyImpl(this);
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
      if (instance.landmarks case final value?) 'landmarks': value,
      if (instance.areas case final value?) 'areas': value,
    };
