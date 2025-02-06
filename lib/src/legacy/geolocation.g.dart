// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeolocationError _$GeolocationErrorFromJson(Map<String, dynamic> json) =>
    GeolocationError(
      domain: json['domain'] as String,
      reason: json['reason'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$GeolocationErrorToJson(GeolocationError instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'reason': instance.reason,
      'message': instance.message,
    };

GeolocationErrorResponse _$GeolocationErrorResponseFromJson(
        Map<String, dynamic> json) =>
    GeolocationErrorResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => GeolocationError.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GeolocationErrorResponseToJson(
        GeolocationErrorResponse instance) =>
    <String, dynamic>{
      if (instance.errors case final value?) 'errors': value,
      if (instance.code case final value?) 'code': value,
      if (instance.message case final value?) 'message': value,
    };

GeolocationResponse _$GeolocationResponseFromJson(Map<String, dynamic> json) =>
    GeolocationResponse(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      accuracy: json['accuracy'] as num?,
      error: json['error'] == null
          ? null
          : GeolocationErrorResponse.fromJson(
              json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeolocationResponseToJson(
        GeolocationResponse instance) =>
    <String, dynamic>{
      if (instance.location case final value?) 'location': value,
      if (instance.accuracy case final value?) 'accuracy': value,
      if (instance.error case final value?) 'error': value,
    };

CellTower _$CellTowerFromJson(Map<String, dynamic> json) => CellTower(
      cellId: json['cell_id'] as num,
      locationAreaCode: json['location_area_code'] as num,
      mobileCountryCode: json['mobile_country_code'] as num,
      mobileNetworkCode: json['mobile_network_code'] as num,
      timingAdvance: json['timing_advance'] as num?,
      age: json['age'] as num?,
      signalStrength: json['signal_strength'] as num?,
    );

Map<String, dynamic> _$CellTowerToJson(CellTower instance) => <String, dynamic>{
      if (instance.age case final value?) 'age': value,
      if (instance.signalStrength case final value?) 'signal_strength': value,
      'cell_id': instance.cellId,
      'location_area_code': instance.locationAreaCode,
      'mobile_country_code': instance.mobileCountryCode,
      'mobile_network_code': instance.mobileNetworkCode,
      if (instance.timingAdvance case final value?) 'timing_advance': value,
    };

WifiAccessPoint _$WifiAccessPointFromJson(Map<String, dynamic> json) =>
    WifiAccessPoint(
      age: json['age'] as num?,
      signalStrength: json['signal_strength'] as num?,
      macAddress: json['mac_address'] as String?,
      channel: json['channel'],
      signalToNoiseRatio: json['signal_to_noise_ratio'] as num?,
    );

Map<String, dynamic> _$WifiAccessPointToJson(WifiAccessPoint instance) =>
    <String, dynamic>{
      if (instance.age case final value?) 'age': value,
      if (instance.signalStrength case final value?) 'signal_strength': value,
      if (instance.macAddress case final value?) 'mac_address': value,
      if (instance.channel case final value?) 'channel': value,
      if (instance.signalToNoiseRatio case final value?)
        'signal_to_noise_ratio': value,
    };
