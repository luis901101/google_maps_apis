// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containing_place.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContainingPlaceCWProxy {
  ContainingPlace name(String? name);

  ContainingPlace id(String? id);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ContainingPlace(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ContainingPlace(...).copyWith(id: 12, name: "My name")
  /// ```
  ContainingPlace call({String? name, String? id});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfContainingPlace.copyWith(...)` or call `instanceOfContainingPlace.copyWith.fieldName(value)` for a single field.
class _$ContainingPlaceCWProxyImpl implements _$ContainingPlaceCWProxy {
  const _$ContainingPlaceCWProxyImpl(this._value);

  final ContainingPlace _value;

  @override
  ContainingPlace name(String? name) => call(name: name);

  @override
  ContainingPlace id(String? id) => call(id: id);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ContainingPlace(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ContainingPlace(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfContainingPlace.copyWith(...)` or `instanceOfContainingPlace.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ContainingPlaceCWProxy get copyWith => _$ContainingPlaceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainingPlace _$ContainingPlaceFromJson(Map<String, dynamic> json) =>
    ContainingPlace(name: json['name'] as String?, id: json['id'] as String?);

Map<String, dynamic> _$ContainingPlaceToJson(ContainingPlace instance) =>
    <String, dynamic>{'name': ?instance.name, 'id': ?instance.id};
