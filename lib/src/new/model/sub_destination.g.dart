// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_destination.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SubDestinationCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// SubDestination(...).copyWith(id: 12, name: "My name")
  /// ````
  SubDestination call({
    String? name,
    String? id,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSubDestination.copyWith(...)`.
class _$SubDestinationCWProxyImpl implements _$SubDestinationCWProxy {
  const _$SubDestinationCWProxyImpl(this._value);

  final SubDestination _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// SubDestination(...).copyWith(id: 12, name: "My name")
  /// ````
  SubDestination call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return SubDestination(
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

extension $SubDestinationCopyWith on SubDestination {
  /// Returns a callable class that can be used as follows: `instanceOfSubDestination.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$SubDestinationCWProxy get copyWith => _$SubDestinationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubDestination _$SubDestinationFromJson(Map<String, dynamic> json) =>
    SubDestination(
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$SubDestinationToJson(SubDestination instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.id case final value?) 'id': value,
    };
