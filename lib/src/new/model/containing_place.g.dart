// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containing_place.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContainingPlaceCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ContainingPlace(...).copyWith(id: 12, name: "My name")
  /// ````
  ContainingPlace call({
    String? name,
    String? id,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfContainingPlace.copyWith(...)`.
class _$ContainingPlaceCWProxyImpl implements _$ContainingPlaceCWProxy {
  const _$ContainingPlaceCWProxyImpl(this._value);

  final ContainingPlace _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// ContainingPlace(...).copyWith(id: 12, name: "My name")
  /// ````
  ContainingPlace call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return ContainingPlace(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
    );
  }
}

extension $ContainingPlaceCopyWith on ContainingPlace {
  /// Returns a callable class that can be used as follows: `instanceOfContainingPlace.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$ContainingPlaceCWProxy get copyWith => _$ContainingPlaceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainingPlace _$ContainingPlaceFromJson(Map<String, dynamic> json) =>
    ContainingPlace(
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ContainingPlaceToJson(ContainingPlace instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.id case final value?) 'id': value,
    };
