// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribution.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AttributionCWProxy {
  Attribution provider(String? provider);

  Attribution providerUri(String? providerUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Attribution(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Attribution(...).copyWith(id: 12, name: "My name")
  /// ```
  Attribution call({String? provider, String? providerUri});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAttribution.copyWith(...)` or call `instanceOfAttribution.copyWith.fieldName(value)` for a single field.
class _$AttributionCWProxyImpl implements _$AttributionCWProxy {
  const _$AttributionCWProxyImpl(this._value);

  final Attribution _value;

  @override
  Attribution provider(String? provider) => call(provider: provider);

  @override
  Attribution providerUri(String? providerUri) =>
      call(providerUri: providerUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `Attribution(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// Attribution(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAttribution.copyWith(...)` or `instanceOfAttribution.copyWith.fieldName(...)`.
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
      'provider': ?instance.provider,
      'providerUri': ?instance.providerUri,
    };
