import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/coordinates.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_area.g.dart';

@JsonSerializable()
@CopyWith()
class LocationCircleArea extends Jsonable<LocationCircleArea> {
  final Circle circle;

  LocationCircleArea({
    required this.circle,
  });

  factory LocationCircleArea.fromJson(Map<String, dynamic> json) {
    return _$LocationCircleAreaFromJson(json);
  }

  @override
  LocationCircleArea? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? LocationCircleArea.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LocationCircleAreaToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class LocationMultiArea extends Jsonable<LocationMultiArea> {
  final Circle? circle;
  final Rectangle? rectangle;

  LocationMultiArea({
    this.circle,
    this.rectangle,
  });

  factory LocationMultiArea.fromJson(Map<String, dynamic> json) {
    return _$LocationMultiAreaFromJson(json);
  }

  @override
  LocationMultiArea? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? LocationMultiArea.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LocationMultiAreaToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Circle extends Jsonable<Circle> {
  final Coordinates center;

  /// The radius in meters must be between 1.0 and 50000.0, inclusive.
  /// The default radius is 500.0.
  /// You must set it in your request to a value greater than 0.0.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search#locationrestriction
  final double radius;
  static const double defaultRadius = 500.0;

  Circle({
    required this.center,
    double? radius,
  }) : radius = radius?.clamp(1, 50000) ?? defaultRadius;

  factory Circle.fromJson(Map<String, dynamic> json) {
    return _$CircleFromJson(json);
  }

  @override
  Circle? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Circle.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$CircleToJson(this);
  }
}

@JsonSerializable()
@CopyWith()

/// A rectangle is a latitude-longitude viewport, represented as two diagonally opposite low and high points. The low point marks the southwest corner of the rectangle, and the high point represents the northeast corner of the rectangle.
/// A viewport is considered a closed region, meaning it includes its boundary. The latitude bounds must range between -90 to 90 degrees inclusive, and the longitude bounds must range between -180 to 180 degrees inclusive:
///
/// - If [low] = [high], the viewport consists of that single point.
/// - If [low.longitude] > [high.longitude], the longitude range is inverted (the viewport crosses the 180 degree longitude line).
/// - If [low.longitude] = -180 degrees and [high.longitude] = 180 degrees, the viewport includes all longitudes.
/// - If [low.longitude] = 180 degrees and [high.longitude] = -180 degrees, the longitude range is empty.
/// - If [low.latitude] > [high.latitude], the latitude range is empty.
///
/// Both low and high must be populated, and the represented box cannot be empty. An empty viewport results in an error.
class Rectangle extends Jsonable<Rectangle> {
  /// The low point marks the southwest corner of the rectangle.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#location-bias
  final Coordinates low;

  /// The high point represents the northeast corner of the rectangle.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#location-bias
  final Coordinates high;
  Rectangle({
    required this.low,
    required this.high,
  });

  factory Rectangle.fromJson(Map<String, dynamic> json) {
    return _$RectangleFromJson(json);
  }

  @override
  Rectangle? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Rectangle.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$RectangleToJson(this);
  }
}
