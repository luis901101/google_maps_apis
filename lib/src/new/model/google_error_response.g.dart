// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_error_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GoogleErrorResponseCWProxy {
  GoogleErrorResponse error(ErrorInfo? error);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GoogleErrorResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GoogleErrorResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  GoogleErrorResponse call({ErrorInfo? error});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGoogleErrorResponse.copyWith(...)` or call `instanceOfGoogleErrorResponse.copyWith.fieldName(value)` for a single field.
class _$GoogleErrorResponseCWProxyImpl implements _$GoogleErrorResponseCWProxy {
  const _$GoogleErrorResponseCWProxyImpl(this._value);

  final GoogleErrorResponse _value;

  @override
  GoogleErrorResponse error(ErrorInfo? error) => call(error: error);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GoogleErrorResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GoogleErrorResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  GoogleErrorResponse call({Object? error = const $CopyWithPlaceholder()}) {
    return GoogleErrorResponse(
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as ErrorInfo?,
    );
  }
}

extension $GoogleErrorResponseCopyWith on GoogleErrorResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGoogleErrorResponse.copyWith(...)` or `instanceOfGoogleErrorResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GoogleErrorResponseCWProxy get copyWith =>
      _$GoogleErrorResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleErrorResponse _$GoogleErrorResponseFromJson(Map<String, dynamic> json) =>
    GoogleErrorResponse(
      error: json['error'] == null
          ? null
          : ErrorInfo.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoogleErrorResponseToJson(
  GoogleErrorResponse instance,
) => <String, dynamic>{'error': ?instance.error};
