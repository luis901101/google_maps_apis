// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plus_code.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlusCodeCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlusCode(...).copyWith(id: 12, name: "My name")
  /// ````
  PlusCode call({
    String? globalCode,
    String? compoundCode,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlusCode.copyWith(...)`.
class _$PlusCodeCWProxyImpl implements _$PlusCodeCWProxy {
  const _$PlusCodeCWProxyImpl(this._value);

  final PlusCode _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// PlusCode(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfPlusCode.copyWith(...)`.
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
      if (instance.globalCode case final value?) 'globalCode': value,
      if (instance.compoundCode case final value?) 'compoundCode': value,
    };
