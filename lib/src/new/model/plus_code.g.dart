// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plus_code.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlusCodeCWProxy {
  PlusCode globalCode(String? globalCode);

  PlusCode compoundCode(String? compoundCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PlusCode(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PlusCode(...).copyWith(id: 12, name: "My name")
  /// ```
  PlusCode call({String? globalCode, String? compoundCode});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPlusCode.copyWith(...)` or call `instanceOfPlusCode.copyWith.fieldName(value)` for a single field.
class _$PlusCodeCWProxyImpl implements _$PlusCodeCWProxy {
  const _$PlusCodeCWProxyImpl(this._value);

  final PlusCode _value;

  @override
  PlusCode globalCode(String? globalCode) => call(globalCode: globalCode);

  @override
  PlusCode compoundCode(String? compoundCode) =>
      call(compoundCode: compoundCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PlusCode(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PlusCode(...).copyWith(id: 12, name: "My name")
  /// ```
  PlusCode call({
    Object? globalCode = const $CopyWithPlaceholder(),
    Object? compoundCode = const $CopyWithPlaceholder(),
  }) {
    return PlusCode(
      globalCode: globalCode == const $CopyWithPlaceholder()
          ? _value.globalCode
          // ignore: cast_nullable_to_non_nullable
          : globalCode as String?,
      compoundCode: compoundCode == const $CopyWithPlaceholder()
          ? _value.compoundCode
          // ignore: cast_nullable_to_non_nullable
          : compoundCode as String?,
    );
  }
}

extension $PlusCodeCopyWith on PlusCode {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPlusCode.copyWith(...)` or `instanceOfPlusCode.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlusCodeCWProxy get copyWith => _$PlusCodeCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) => PlusCode(
  globalCode: json['globalCode'] as String?,
  compoundCode: json['compoundCode'] as String?,
);

Map<String, dynamic> _$PlusCodeToJson(PlusCode instance) => <String, dynamic>{
  'globalCode': ?instance.globalCode,
  'compoundCode': ?instance.compoundCode,
};
