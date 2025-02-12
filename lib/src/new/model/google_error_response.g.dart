// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_error_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GoogleErrorResponseCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// GoogleErrorResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  GoogleErrorResponse call({
    ErrorInfo? error,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGoogleErrorResponse.copyWith(...)`.
class _$GoogleErrorResponseCWProxyImpl implements _$GoogleErrorResponseCWProxy {
  const _$GoogleErrorResponseCWProxyImpl(this._value);

  final GoogleErrorResponse _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// GoogleErrorResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  GoogleErrorResponse call({
    Object? error = const $CopyWithPlaceholder(),
  }) {
    return GoogleErrorResponse(
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as ErrorInfo?,
    );
  }
}

extension $GoogleErrorResponseCopyWith on GoogleErrorResponse {
  /// Returns a callable class that can be used as follows: `instanceOfGoogleErrorResponse.copyWith(...)`.
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
        GoogleErrorResponse instance) =>
    <String, dynamic>{
      if (instance.error case final value?) 'error': value,
    };
