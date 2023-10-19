import 'package:json_annotation/json_annotation.dart';

part 'core.g.dart';

@JsonSerializable()
class Location {
  final double lat;
  final double lng;

  Location({
    required this.lat,
    required this.lng,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  String toString() => '$lat,$lng';
}

/// Official docs: https://developers.google.com/maps/documentation/places/web-service/details#Geometry
@JsonSerializable()
class Geometry {
  final Location location;

  /// JSON location_type
  final String? locationType;

  final Bounds? viewport;

  final Bounds? bounds;

  Geometry({
    required this.location,
    this.locationType,
    this.viewport,
    this.bounds,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}

@JsonSerializable()
class Bounds {
  final Location northeast;
  final Location southwest;

  Bounds({
    required this.northeast,
    required this.southwest,
  });

  @override
  String toString() =>
      '${northeast.lat},${northeast.lng}|${southwest.lat},${southwest.lng}';

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);
  Map<String, dynamic> toJson() => _$BoundsToJson(this);
}

abstract class GoogleResponseStatus {
  final ResponseStatus status;

  /// JSON error_message
  final String? errorMessage;

  bool get isOk => status == ResponseStatus.ok;
  bool get hasNoResults => status == ResponseStatus.zeroResults;
  bool get isOverQueryLimit => status == ResponseStatus.overQueryLimit;
  bool get isDenied => status == ResponseStatus.requestDenied;
  bool get isInvalid => status == ResponseStatus.invalidRequest;
  bool get unknownError => status == ResponseStatus.unknownError;
  bool get isNotFound => status == ResponseStatus.notFound;

  GoogleResponseStatus({ResponseStatus? status, this.errorMessage})
      : status = status ?? ResponseStatus.zeroResults;
}

abstract class GoogleResponseList<T> extends GoogleResponseStatus {
  final List<T>? results;

  GoogleResponseList({super.status, super.errorMessage, this.results});
}

abstract class GoogleResponse<T> extends GoogleResponseStatus {
  final T result;

  GoogleResponse({super.status, super.errorMessage, required this.result});
}

/// Official docs: https://developers.google.com/maps/documentation/places/web-service/details#AddressComponent
@JsonSerializable()
class AddressComponent {
  /// JSON long_name
  final String? longName;

  /// JSON short_name
  final String? shortName;
  final List<String>? types;

  AddressComponent({
    this.types,
    this.longName,
    this.shortName,
  });

  factory AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);
  Map<String, dynamic> toJson() => _$AddressComponentToJson(this);
}

class Component {
  static const route = 'route';
  static const locality = 'locality';
  static const administrativeArea = 'administrative_area';
  static const postalCode = 'postal_code';
  static const country = 'country';

  final String component;
  final String value;

  Component(this.component, this.value);

  @override
  String toString() => '$component:$value';
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum ResponseStatus {
  ok,
  zeroResults,
  overQueryLimit,
  requestDenied,
  invalidRequest,
  unknownError,
  notFound,
  maxWaypointsExceeded,
  maxRouteLengthExceeded,
  ;
}

/// Google requires the `mode` query param to be lower case but then when parsing `travel_mode` from json response it should be treated as upper case
@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TravelMode {
  driving,
  walking,
  bicycling,
  transit,
  ;
}

enum RouteType {
  tolls,
  highways,
  ferries,
  indoor,
}

enum Unit {
  metric,
  imperial,
}

enum TrafficModel {
  @JsonValue('best_guess')
  bestGuess,
  pessimistic,
  optimistic,
}

enum TransitMode {
  bus,
  subway,
  train,
  tram,
  rail,
}

enum TransitRoutingPreferences {
  @JsonValue('less_walking')
  lessWalking,
  @JsonValue('fewer_transfers')
  fewerTransfers,
}
