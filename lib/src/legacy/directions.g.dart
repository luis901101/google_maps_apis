// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsResponse _$DirectionsResponseFromJson(Map<String, dynamic> json) =>
    DirectionsResponse(
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      geocodedWaypoints: (json['geocoded_waypoints'] as List<dynamic>?)
          ?.map((e) => GeocodedWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => Route.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DirectionsResponseToJson(DirectionsResponse instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      if (instance.errorMessage case final value?) 'error_message': value,
      if (instance.geocodedWaypoints case final value?)
        'geocoded_waypoints': value,
      if (instance.routes case final value?) 'routes': value,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.ok: 'OK',
  ResponseStatus.zeroResults: 'ZERO_RESULTS',
  ResponseStatus.overQueryLimit: 'OVER_QUERY_LIMIT',
  ResponseStatus.requestDenied: 'REQUEST_DENIED',
  ResponseStatus.invalidRequest: 'INVALID_REQUEST',
  ResponseStatus.unknownError: 'UNKNOWN_ERROR',
  ResponseStatus.notFound: 'NOT_FOUND',
  ResponseStatus.maxWaypointsExceeded: 'MAX_WAYPOINTS_EXCEEDED',
  ResponseStatus.maxRouteLengthExceeded: 'MAX_ROUTE_LENGTH_EXCEEDED',
};

Waypoint _$WaypointFromJson(Map<String, dynamic> json) => Waypoint(
      value: json['value'] as String,
    );

Map<String, dynamic> _$WaypointToJson(Waypoint instance) => <String, dynamic>{
      'value': instance.value,
    };

GeocodedWaypoint _$GeocodedWaypointFromJson(Map<String, dynamic> json) =>
    GeocodedWaypoint(
      geocoderStatus: json['geocoder_status'] as String?,
      placeId: json['place_id'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      partialMatch: json['partial_match'] as bool? ?? false,
    );

Map<String, dynamic> _$GeocodedWaypointToJson(GeocodedWaypoint instance) =>
    <String, dynamic>{
      if (instance.geocoderStatus case final value?) 'geocoder_status': value,
      if (instance.placeId case final value?) 'place_id': value,
      if (instance.types case final value?) 'types': value,
      if (instance.partialMatch case final value?) 'partial_match': value,
    };

Route _$RouteFromJson(Map<String, dynamic> json) => Route(
      summary: json['summary'] as String?,
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => Leg.fromJson(e as Map<String, dynamic>))
          .toList(),
      copyrights: json['copyrights'] as String?,
      overviewPolyline: json['overview_polyline'] == null
          ? null
          : Polyline.fromJson(
              json['overview_polyline'] as Map<String, dynamic>),
      warnings: json['warnings'] as List<dynamic>?,
      waypointOrder: (json['waypoint_order'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
      bounds: json['bounds'] == null
          ? null
          : Bounds.fromJson(json['bounds'] as Map<String, dynamic>),
      fare: json['fare'] == null
          ? null
          : Fare.fromJson(json['fare'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteToJson(Route instance) => <String, dynamic>{
      if (instance.summary case final value?) 'summary': value,
      if (instance.legs case final value?) 'legs': value,
      if (instance.copyrights case final value?) 'copyrights': value,
      if (instance.overviewPolyline case final value?)
        'overview_polyline': value,
      if (instance.warnings case final value?) 'warnings': value,
      if (instance.waypointOrder case final value?) 'waypoint_order': value,
      if (instance.bounds case final value?) 'bounds': value,
      if (instance.fare case final value?) 'fare': value,
    };

Leg _$LegFromJson(Map<String, dynamic> json) => Leg(
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
      startAddress: json['start_address'] as String?,
      endAddress: json['end_address'] as String?,
      durationInTraffic: json['duration_in_traffic'] == null
          ? null
          : Value.fromJson(json['duration_in_traffic'] as Map<String, dynamic>),
      arrivalTime: json['arrival_time'] == null
          ? null
          : Time.fromJson(json['arrival_time'] as Map<String, dynamic>),
      departureTime: json['departure_time'] == null
          ? null
          : Time.fromJson(json['departure_time'] as Map<String, dynamic>),
      startLocation: json['start_location'] == null
          ? null
          : Location.fromJson(json['start_location'] as Map<String, dynamic>),
      endLocation: json['end_location'] == null
          ? null
          : Location.fromJson(json['end_location'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : Value.fromJson(json['duration'] as Map<String, dynamic>),
      distance: json['distance'] == null
          ? null
          : Value.fromJson(json['distance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LegToJson(Leg instance) => <String, dynamic>{
      if (instance.startLocation case final value?) 'start_location': value,
      if (instance.endLocation case final value?) 'end_location': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.distance case final value?) 'distance': value,
      if (instance.steps case final value?) 'steps': value,
      if (instance.startAddress case final value?) 'start_address': value,
      if (instance.endAddress case final value?) 'end_address': value,
      if (instance.durationInTraffic case final value?)
        'duration_in_traffic': value,
      if (instance.arrivalTime case final value?) 'arrival_time': value,
      if (instance.departureTime case final value?) 'departure_time': value,
    };

Step _$StepFromJson(Map<String, dynamic> json) => Step(
      travelMode: $enumDecode(_$TravelModeEnumMap, json['travel_mode']),
      htmlInstructions: json['html_instructions'] as String,
      polyline: Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
      startLocation:
          Location.fromJson(json['start_location'] as Map<String, dynamic>),
      endLocation:
          Location.fromJson(json['end_location'] as Map<String, dynamic>),
      duration: Value.fromJson(json['duration'] as Map<String, dynamic>),
      distance: Value.fromJson(json['distance'] as Map<String, dynamic>),
      transitDetails: json['transit_details'] == null
          ? null
          : TransitDetails.fromJson(
              json['transit_details'] as Map<String, dynamic>),
      maneuver: json['maneuver'] as String?,
    );

Map<String, dynamic> _$StepToJson(Step instance) => <String, dynamic>{
      if (instance.startLocation case final value?) 'start_location': value,
      if (instance.endLocation case final value?) 'end_location': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.distance case final value?) 'distance': value,
      'travel_mode': _$TravelModeEnumMap[instance.travelMode]!,
      'html_instructions': instance.htmlInstructions,
      if (instance.maneuver case final value?) 'maneuver': value,
      'polyline': instance.polyline,
      if (instance.transitDetails case final value?) 'transit_details': value,
    };

const _$TravelModeEnumMap = {
  TravelMode.driving: 'DRIVING',
  TravelMode.walking: 'WALKING',
  TravelMode.bicycling: 'BICYCLING',
  TravelMode.transit: 'TRANSIT',
};

Polyline _$PolylineFromJson(Map<String, dynamic> json) => Polyline(
      points: json['points'] as String,
    );

Map<String, dynamic> _$PolylineToJson(Polyline instance) => <String, dynamic>{
      'points': instance.points,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
      value: json['value'] as num,
      text: json['text'] as String,
    );

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
    };

Fare _$FareFromJson(Map<String, dynamic> json) => Fare(
      currency: json['currency'] as String,
      value: json['value'] as num,
      text: json['text'] as String,
    );

Map<String, dynamic> _$FareToJson(Fare instance) => <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
      'currency': instance.currency,
    };

Time _$TimeFromJson(Map<String, dynamic> json) => Time(
      timeZone: json['time_zone'] as String,
      value: json['value'] as num,
      text: json['text'] as String,
    );

Map<String, dynamic> _$TimeToJson(Time instance) => <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
      'time_zone': instance.timeZone,
    };

TransitDetails _$TransitDetailsFromJson(Map<String, dynamic> json) =>
    TransitDetails(
      arrivalStop: Stop.fromJson(json['arrival_stop'] as Map<String, dynamic>),
      departureStop:
          Stop.fromJson(json['departure_stop'] as Map<String, dynamic>),
      arrivalTime: Time.fromJson(json['arrival_time'] as Map<String, dynamic>),
      departureTime:
          Time.fromJson(json['departure_time'] as Map<String, dynamic>),
      headsign: json['headsign'] as String,
      headway: json['headway'] as num,
      numStops: json['num_stops'] as num,
    );

Map<String, dynamic> _$TransitDetailsToJson(TransitDetails instance) =>
    <String, dynamic>{
      'arrival_stop': instance.arrivalStop,
      'departure_stop': instance.departureStop,
      'arrival_time': instance.arrivalTime,
      'departure_time': instance.departureTime,
      'headsign': instance.headsign,
      'headway': instance.headway,
      'num_stops': instance.numStops,
    };

Stop _$StopFromJson(Map<String, dynamic> json) => Stop(
      name: json['name'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StopToJson(Stop instance) => <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
    };

Line _$LineFromJson(Map<String, dynamic> json) => Line(
      name: json['name'] as String,
      shortName: json['short_name'] as String,
      color: json['color'] as String,
      agencies: (json['agencies'] as List<dynamic>)
          .map((e) => TransitAgency.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
      icon: json['icon'] as String,
      textColor: json['text_color'] as String,
      vehicle: VehicleType.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LineToJson(Line instance) => <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'color': instance.color,
      'agencies': instance.agencies,
      'url': instance.url,
      'icon': instance.icon,
      'text_color': instance.textColor,
      'vehicle': instance.vehicle,
    };

TransitAgency _$TransitAgencyFromJson(Map<String, dynamic> json) =>
    TransitAgency(
      name: json['name'] as String,
      url: json['url'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$TransitAgencyToJson(TransitAgency instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'phone': instance.phone,
    };

VehicleType _$VehicleTypeFromJson(Map<String, dynamic> json) => VehicleType(
      name: json['name'] as String,
      type: json['type'] as String,
      icon: json['icon'] as String,
      localIcon: json['local_icon'] as String,
    );

Map<String, dynamic> _$VehicleTypeToJson(VehicleType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'icon': instance.icon,
      'local_icon': instance.localIcon,
    };
