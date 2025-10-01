// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_descriptor.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddressDescriptorCWProxy {
  AddressDescriptor landmarks(List<Landmark>? landmarks);

  AddressDescriptor areas(List<Area>? areas);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddressDescriptor(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddressDescriptor(...).copyWith(id: 12, name: "My name")
  /// ```
  AddressDescriptor call({List<Landmark>? landmarks, List<Area>? areas});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAddressDescriptor.copyWith(...)` or call `instanceOfAddressDescriptor.copyWith.fieldName(value)` for a single field.
class _$AddressDescriptorCWProxyImpl implements _$AddressDescriptorCWProxy {
  const _$AddressDescriptorCWProxyImpl(this._value);

  final AddressDescriptor _value;

  @override
  AddressDescriptor landmarks(List<Landmark>? landmarks) =>
      call(landmarks: landmarks);

  @override
  AddressDescriptor areas(List<Area>? areas) => call(areas: areas);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddressDescriptor(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddressDescriptor(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAddressDescriptor.copyWith(...)` or `instanceOfAddressDescriptor.copyWith.fieldName(...)`.
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
      'landmarks': ?instance.landmarks,
      'areas': ?instance.areas,
    };
