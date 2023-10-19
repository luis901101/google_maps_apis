import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';

import 'core.dart';
import 'utils.dart';

part 'distance.g.dart';

const _distanceUrl = '/distancematrix/json';

///https://developers.google.com/maps/documentation/distance-matrix/intro
class GoogleDistanceMatrix extends GoogleWebService {
  GoogleDistanceMatrix({
    String? apiKey,
    String? baseUrl,
    Client? httpClient,
    Map<String, String>? apiHeaders,
  }) : super(
          apiKey: apiKey,
          baseUrl: baseUrl,
          apiPath: _distanceUrl,
          httpClient: httpClient,
          apiHeaders: apiHeaders,
        );

  Future<DistanceResponse> _distance(
    List<Object /*Location|String*/ > origin,
    List<Object /*Location|String*/ > destination, {
    TravelMode? travelMode,
    String? languageCode,
    bool alternative = false,
    String? region,
    List<RouteType> avoids = const <RouteType>[],
    Unit? unit,
    arrivalTime,
    departureTime,
    List<TransitMode> transitMode = const [],
    TrafficModel? trafficModel,
    TransitRoutingPreferences? transitRoutingPreference,
  }) async {
    final url = buildUrl(
      origin: origin,
      destination: destination,
      travelMode: travelMode,
      languageCode: languageCode,
      alternative: alternative,
      region: region,
      avoids: avoids,
      unit: unit,
      arrivalTime: arrivalTime,
      departureTime: departureTime,
      transitMode: transitMode,
      trafficModel: trafficModel,
      transitRoutingPreference: transitRoutingPreference,
    );

    return _decode(await doGet(url, headers: apiHeaders));
  }

  Future<DistanceResponse> distanceWithLocation(
    List<Location> origin,
    List<Location> destination, {
    TravelMode? travelMode,
    String? languageCode,
    bool alternative = false,
    String? region,
    @deprecated RouteType? avoid,
    List<RouteType> avoids = const <RouteType>[],
    Unit? unit,
    Object? /*DateTime|num*/ arrivalTime,
    Object? /*DateTime|num|String('now')*/ departureTime,
    List<TransitMode> transitMode = const [],
    TrafficModel? trafficModel,
    TransitRoutingPreferences? transitRoutingPreference,
  }) {
    if (avoid != null) {
      avoids = [
        ...avoids,
        avoid,
      ];
    }

    return _distance(
      origin,
      destination,
      travelMode: travelMode,
      languageCode: languageCode,
      alternative: alternative,
      region: region,
      avoids: avoids,
      unit: unit,
      arrivalTime: arrivalTime,
      departureTime: departureTime,
      transitMode: transitMode,
      trafficModel: trafficModel,
      transitRoutingPreference: transitRoutingPreference,
    );
  }

  Future<DistanceResponse> distanceWithAddress(
    List<String> origin,
    List<String> destination, {
    TravelMode? travelMode,
    String? languageCode,
    bool alternative = false,
    String? region,
    @deprecated RouteType? avoid,
    List<RouteType> avoids = const <RouteType>[],
    Unit? unit,
    Object? /*DateTime|num*/ arrivalTime,
    Object? /*DateTime|num|String('now')*/ departureTime,
    List<TransitMode> transitMode = const [],
    TrafficModel? trafficModel,
    TransitRoutingPreferences? transitRoutingPreference,
  }) async {
    if (avoid != null) {
      avoids = [
        ...avoids,
        avoid,
      ];
    }

    return _distance(
      origin,
      destination,
      travelMode: travelMode,
      languageCode: languageCode,
      alternative: alternative,
      region: region,
      avoids: avoids,
      unit: unit,
      arrivalTime: arrivalTime,
      departureTime: departureTime,
      transitMode: transitMode,
      trafficModel: trafficModel,
      transitRoutingPreference: transitRoutingPreference,
    );
  }

  String buildUrl({
    required List<Object /*Location|String*/ > origin,
    required List<Object /*Location|String*/ > destination,
    TravelMode? travelMode,
    String? languageCode,
    bool alternative = false,
    String? region,
    List<RouteType> avoids = const <RouteType>[],
    Unit? unit,
    Object? /*DateTime|num*/ arrivalTime,
    Object? /*DateTime|num|String('now')*/ departureTime,
    List<TransitMode> transitMode = const [],
    TrafficModel? trafficModel,
    TransitRoutingPreferences? transitRoutingPreference,
  }) {
    final params = <String, String>{};

    if (origin is! List<Location> && origin is! List<String>) {
      throw ArgumentError("'origin' must be a '$String' or a '$Location'");
    }
    params['origins'] = origin.join('|');

    if (destination is! List<Location> && destination is! List<String>) {
      throw ArgumentError("'destination' must be a '$String' or a '$Location'");
    }
    params['destinations'] = destination.join('|');

    if (destination is! List<Location> && destination is! List<String>) {
      throw ArgumentError("'destination' must be a '$String' or a '$Location'");
    }
    if (departureTime != null &&
        departureTime is! DateTime &&
        departureTime is! num &&
        departureTime != 'now') {
      throw ArgumentError("'departureTime' must be a '$num' or a '$DateTime'");
    }
    if (arrivalTime != null &&
        arrivalTime is! DateTime &&
        arrivalTime is! num) {
      throw ArgumentError("'arrivalTime' must be a '$num' or a '$DateTime'");
    }

    if (departureTime != null) {
      if (departureTime is! DateTime &&
          departureTime is! num &&
          departureTime != 'now') {
        throw ArgumentError(
            "'departureTime' must be a '$num' or a '$DateTime'");
      }

      params['departure_time'] = departureTime is DateTime
          ? (departureTime.millisecondsSinceEpoch ~/ 1000).toString()
          : departureTime.toString();
    }

    if (arrivalTime != null) {
      if (arrivalTime is! DateTime && arrivalTime is! num) {
        throw ArgumentError("'arrivalTime' must be a '$num' or a '$DateTime'");
      }

      params['arrival_time'] = arrivalTime is DateTime
          ? (arrivalTime.millisecondsSinceEpoch ~/ 1000).toString()
          : arrivalTime.toString();
    }

    if (travelMode != null) {
      params['mode'] = travelMode.name;
    }

    if (alternative) {
      params['alternative'] = alternative.toString();
    }

    if (avoids.isNotEmpty) {
      params['avoid'] = avoids.map((t) => t.name).join('|');
    }

    if (languageCode != null) {
      params['language'] = languageCode;
    }

    if (unit != null) {
      params['units'] = unit.name;
    }

    if (region != null) {
      params['region'] = region;
    }

    if (trafficModel != null) {
      params['traffic_model'] = trafficModel.name;
    }

    if (transitMode.isNotEmpty) {
      params['transit_mode'] = transitMode.map((t) => t.name).join('|');
    }

    if (transitRoutingPreference != null) {
      params['transit_routing_preference'] = transitRoutingPreference.name;
    }

    if (apiKey != null) {
      params['key'] = apiKey!;
    }

    return url.replace(queryParameters: params).toString();
  }

  DistanceResponse _decode(Response res) =>
      DistanceResponse.fromJson(json.decode(res.body));
}

@JsonSerializable()
class DistanceResponse extends GoogleResponseStatus {
  final List<String>? originAddresses;
  final List<String>? destinationAddresses;
  final List<Row>? rows;

  DistanceResponse({
    super.status,
    super.errorMessage,
    this.originAddresses,
    this.destinationAddresses,
    this.rows,
  });

  factory DistanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DistanceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DistanceResponseToJson(this);
}

@JsonSerializable()
class Row {
  final List<Element>? elements;

  Row({this.elements});

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);
  Map<String, dynamic> toJson() => _$RowToJson(this);
}

@JsonSerializable()
class Element {
  final Value distance;
  final Value duration;
  final String? elementStatus;

  Element({
    required this.distance,
    required this.duration,
    this.elementStatus,
  });

  factory Element.fromJson(Map<String, dynamic> json) =>
      _$ElementFromJson(json);
  Map<String, dynamic> toJson() => _$ElementToJson(this);
}

@JsonSerializable()
class Value {
  final num value;
  final String text;

  Value({required this.value, required this.text});

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
  Map<String, dynamic> toJson() => _$ValueToJson(this);
}
