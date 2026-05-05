// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_area.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [LocationRestrictionCircle] is to generate the code for a copyWith(...) function.
extension $LocationRestrictionCircleCopyWithExtension
    on LocationRestrictionCircle {
  LocationRestrictionCircle copyWith({Circle? circle}) {
    return LocationRestrictionCircle(circle: circle ?? this.circle);
  }
}

/// This Extension on [LocationBias] is to generate the code for a copyWith(...) function.
extension $LocationBiasCopyWithExtension on LocationBias {
  LocationBias copyWith({Circle? circle, Rectangle? rectangle}) {
    return LocationBias(
      circle: circle ?? this.circle,
      rectangle: rectangle ?? this.rectangle,
    );
  }
}

/// This Extension on [LocationRestriction] is to generate the code for a copyWith(...) function.
extension $LocationRestrictionCopyWithExtension on LocationRestriction {
  LocationRestriction copyWith({Circle? circle, Rectangle? rectangle}) {
    return LocationRestriction(
      circle: circle ?? this.circle,
      rectangle: rectangle ?? this.rectangle,
    );
  }
}

/// This Extension on [LocationMultiArea] is to generate the code for a copyWith(...) function.
extension $LocationMultiAreaCopyWithExtension on LocationMultiArea {
  LocationMultiArea copyWith({Circle? circle, Rectangle? rectangle}) {
    return LocationMultiArea(
      circle: circle ?? this.circle,
      rectangle: rectangle ?? this.rectangle,
    );
  }
}

/// This Extension on [Circle] is to generate the code for a copyWith(...) function.
extension $CircleCopyWithExtension on Circle {
  Circle copyWith({ReferencePoint? center, double? radius}) {
    return Circle(center: center ?? this.center, radius: radius ?? this.radius);
  }
}

/// This Extension on [Rectangle] is to generate the code for a copyWith(...) function.
extension $RectangleCopyWithExtension on Rectangle {
  Rectangle copyWith({ReferencePoint? low, ReferencePoint? high}) {
    return Rectangle(low: low ?? this.low, high: high ?? this.high);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationRestrictionCircle _$LocationRestrictionCircleFromJson(
  Map<String, dynamic> json,
) => LocationRestrictionCircle(
  circle: Circle.fromJson(json['circle'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationRestrictionCircleToJson(
  LocationRestrictionCircle instance,
) => <String, dynamic>{'circle': instance.circle};

LocationBias _$LocationBiasFromJson(Map<String, dynamic> json) => LocationBias(
  circle: json['circle'] == null
      ? null
      : Circle.fromJson(json['circle'] as Map<String, dynamic>),
  rectangle: json['rectangle'] == null
      ? null
      : Rectangle.fromJson(json['rectangle'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LocationBiasToJson(LocationBias instance) =>
    <String, dynamic>{
      'circle': ?instance.circle,
      'rectangle': ?instance.rectangle,
    };

LocationRestriction _$LocationRestrictionFromJson(Map<String, dynamic> json) =>
    LocationRestriction(
      circle: json['circle'] == null
          ? null
          : Circle.fromJson(json['circle'] as Map<String, dynamic>),
      rectangle: json['rectangle'] == null
          ? null
          : Rectangle.fromJson(json['rectangle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationRestrictionToJson(
  LocationRestriction instance,
) => <String, dynamic>{
  'circle': ?instance.circle,
  'rectangle': ?instance.rectangle,
};

LocationMultiArea _$LocationMultiAreaFromJson(Map<String, dynamic> json) =>
    LocationMultiArea(
      circle: json['circle'] == null
          ? null
          : Circle.fromJson(json['circle'] as Map<String, dynamic>),
      rectangle: json['rectangle'] == null
          ? null
          : Rectangle.fromJson(json['rectangle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationMultiAreaToJson(LocationMultiArea instance) =>
    <String, dynamic>{
      'circle': ?instance.circle,
      'rectangle': ?instance.rectangle,
    };

Circle _$CircleFromJson(Map<String, dynamic> json) => Circle(
  center: ReferencePoint.fromJson(json['center'] as Map<String, dynamic>),
  radius: (json['radius'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CircleToJson(Circle instance) => <String, dynamic>{
  'center': instance.center,
  'radius': instance.radius,
};

Rectangle _$RectangleFromJson(Map<String, dynamic> json) => Rectangle(
  low: ReferencePoint.fromJson(json['low'] as Map<String, dynamic>),
  high: ReferencePoint.fromJson(json['high'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RectangleToJson(Rectangle instance) => <String, dynamic>{
  'low': instance.low,
  'high': instance.high,
};
