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
    List<ErrorInfo>? errors,
    List<String>? messages,
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
    Object? errors = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
  }) {
    return GoogleErrorResponse(
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<ErrorInfo>?,
      messages: messages == const $CopyWithPlaceholder()
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages as List<String>?,
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
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

abstract final class _$GoogleErrorResponseJsonKeys {
  static const String errors = 'errors';
  static const String messages = 'messages';
}

Map<String, dynamic> _$GoogleErrorResponseToJson(
        GoogleErrorResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'messages': instance.messages,
    };
