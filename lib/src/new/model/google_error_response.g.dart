// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_error_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [GoogleErrorResponse] is to generate the code for a copyWith(...) function.
extension $GoogleErrorResponseCopyWithExtension on GoogleErrorResponse {
  GoogleErrorResponse copyWith({ErrorInfo? error}) {
    return GoogleErrorResponse(error: error ?? this.error);
  }
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
