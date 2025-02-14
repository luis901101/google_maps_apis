// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribution.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AttributionCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Attribution(...).copyWith(id: 12, name: "My name")
  /// ````
  Attribution call({
    String? provider,
    String? providerUri,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAttribution.copyWith(...)`.
class _$AttributionCWProxyImpl implements _$AttributionCWProxy {
  const _$AttributionCWProxyImpl(this._value);

  final Attribution _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Attribution(...).copyWith(id: 12, name: "My name")
  /// ````
  Attribution call({
    Object? provider = const $CopyWithPlaceholder(),
    Object? providerUri = const $CopyWithPlaceholder(),
  }) {
    return Attribution(
      provider: provider == const $CopyWithPlaceholder()
          ? _value.provider
          // ignore: cast_nullable_to_non_nullable
          : provider as String?,
      providerUri: providerUri == const $CopyWithPlaceholder()
          ? _value.providerUri
          // ignore: cast_nullable_to_non_nullable
          : providerUri as String?,
    );
  }
}

extension $AttributionCopyWith on Attribution {
  /// Returns a callable class that can be used as follows: `instanceOfAttribution.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$AttributionCWProxy get copyWith => _$AttributionCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attribution _$AttributionFromJson(Map<String, dynamic> json) => Attribution(
      provider: json['provider'] as String?,
      providerUri: json['providerUri'] as String?,
    );

Map<String, dynamic> _$AttributionToJson(Attribution instance) =>
    <String, dynamic>{
      if (instance.provider case final value?) 'provider': value,
      if (instance.providerUri case final value?) 'providerUri': value,
    };
