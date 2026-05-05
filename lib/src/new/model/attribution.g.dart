// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribution.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [Attribution] is to generate the code for a copyWith(...) function.
extension $AttributionCopyWithExtension on Attribution {
  Attribution copyWith({String? provider, String? providerUri}) {
    return Attribution(
      provider: provider ?? this.provider,
      providerUri: providerUri ?? this.providerUri,
    );
  }
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
