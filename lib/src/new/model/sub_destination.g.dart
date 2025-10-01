// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_destination.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SubDestinationCWProxy {
  SubDestination name(String? name);

  SubDestination id(String? id);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SubDestination(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SubDestination(...).copyWith(id: 12, name: "My name")
  /// ```
  SubDestination call({String? name, String? id});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSubDestination.copyWith(...)` or call `instanceOfSubDestination.copyWith.fieldName(value)` for a single field.
class _$SubDestinationCWProxyImpl implements _$SubDestinationCWProxy {
  const _$SubDestinationCWProxyImpl(this._value);

  final SubDestination _value;

  @override
  SubDestination name(String? name) => call(name: name);

  @override
  SubDestination id(String? id) => call(id: id);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SubDestination(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SubDestination(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSubDestination.copyWith(...)` or `instanceOfSubDestination.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SubDestinationCWProxy get copyWith => _$SubDestinationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubDestination _$SubDestinationFromJson(Map<String, dynamic> json) =>
    SubDestination(name: json['name'] as String?, id: json['id'] as String?);

Map<String, dynamic> _$SubDestinationToJson(SubDestination instance) =>
    <String, dynamic>{'name': ?instance.name, 'id': ?instance.id};
