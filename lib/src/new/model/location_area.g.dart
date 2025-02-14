// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_area.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LocationCircleAreaCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// LocationCircleArea(...).copyWith(id: 12, name: "My name")
  /// ````
  LocationCircleArea call({
    Circle circle,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLocationCircleArea.copyWith(...)`.
class _$LocationCircleAreaCWProxyImpl implements _$LocationCircleAreaCWProxy {
  const _$LocationCircleAreaCWProxyImpl(this._value);

  final LocationCircleArea _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// LocationCircleArea(...).copyWith(id: 12, name: "My name")
  /// ````
  LocationCircleArea call({
    Object? circle = const $CopyWithPlaceholder(),
  }) {
    return LocationCircleArea(
      circle: circle == const $CopyWithPlaceholder()
          ? _value.circle
          // ignore: cast_nullable_to_non_nullable
          : circle as Circle,
    );
  }
}

extension $LocationCircleAreaCopyWith on LocationCircleArea {
  /// Returns a callable class that can be used as follows: `instanceOfLocationCircleArea.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$LocationCircleAreaCWProxy get copyWith =>
      _$LocationCircleAreaCWProxyImpl(this);
}

abstract class _$LocationMultiAreaCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// LocationMultiArea(...).copyWith(id: 12, name: "My name")
  /// ````
  LocationMultiArea call({
    Circle? circle,
    Rectangle? rectangle,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLocationMultiArea.copyWith(...)`.
class _$LocationMultiAreaCWProxyImpl implements _$LocationMultiAreaCWProxy {
  const _$LocationMultiAreaCWProxyImpl(this._value);

  final LocationMultiArea _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// LocationMultiArea(...).copyWith(id: 12, name: "My name")
  /// ````
  LocationMultiArea call({
    Object? circle = const $CopyWithPlaceholder(),
    Object? rectangle = const $CopyWithPlaceholder(),
  }) {
    return LocationMultiArea(
      circle: circle == const $CopyWithPlaceholder()
          ? _value.circle
          // ignore: cast_nullable_to_non_nullable
          : circle as Circle?,
      rectangle: rectangle == const $CopyWithPlaceholder()
          ? _value.rectangle
          // ignore: cast_nullable_to_non_nullable
          : rectangle as Rectangle?,
    );
  }
}

extension $LocationMultiAreaCopyWith on LocationMultiArea {
  /// Returns a callable class that can be used as follows: `instanceOfLocationMultiArea.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$LocationMultiAreaCWProxy get copyWith =>
      _$LocationMultiAreaCWProxyImpl(this);
}

abstract class _$CircleCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Circle(...).copyWith(id: 12, name: "My name")
  /// ````
  Circle call({
    Coordinates center,
    double? radius,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCircle.copyWith(...)`.
class _$CircleCWProxyImpl implements _$CircleCWProxy {
  const _$CircleCWProxyImpl(this._value);

  final Circle _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Circle(...).copyWith(id: 12, name: "My name")
  /// ````
  Circle call({
    Object? center = const $CopyWithPlaceholder(),
    Object? radius = const $CopyWithPlaceholder(),
  }) {
    return Circle(
      center: center == const $CopyWithPlaceholder()
          ? _value.center
          // ignore: cast_nullable_to_non_nullable
          : center as Coordinates,
      radius: radius == const $CopyWithPlaceholder()
          ? _value.radius
          // ignore: cast_nullable_to_non_nullable
          : radius as double?,
    );
  }
}

extension $CircleCopyWith on Circle {
  /// Returns a callable class that can be used as follows: `instanceOfCircle.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$CircleCWProxy get copyWith => _$CircleCWProxyImpl(this);
}

abstract class _$RectangleCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Rectangle(...).copyWith(id: 12, name: "My name")
  /// ````
  Rectangle call({
    Coordinates low,
    Coordinates high,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRectangle.copyWith(...)`.
class _$RectangleCWProxyImpl implements _$RectangleCWProxy {
  const _$RectangleCWProxyImpl(this._value);

  final Rectangle _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Rectangle(...).copyWith(id: 12, name: "My name")
  /// ````
  Rectangle call({
    Object? low = const $CopyWithPlaceholder(),
    Object? high = const $CopyWithPlaceholder(),
  }) {
    return Rectangle(
      low: low == const $CopyWithPlaceholder()
          ? _value.low
          // ignore: cast_nullable_to_non_nullable
          : low as Coordinates,
      high: high == const $CopyWithPlaceholder()
          ? _value.high
          // ignore: cast_nullable_to_non_nullable
          : high as Coordinates,
    );
  }
}

extension $RectangleCopyWith on Rectangle {
  /// Returns a callable class that can be used as follows: `instanceOfRectangle.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$RectangleCWProxy get copyWith => _$RectangleCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationCircleArea _$LocationCircleAreaFromJson(Map<String, dynamic> json) =>
    LocationCircleArea(
      circle: Circle.fromJson(json['circle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationCircleAreaToJson(LocationCircleArea instance) =>
    <String, dynamic>{
      'circle': instance.circle,
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
      if (instance.circle case final value?) 'circle': value,
      if (instance.rectangle case final value?) 'rectangle': value,
    };

Circle _$CircleFromJson(Map<String, dynamic> json) => Circle(
      center: Coordinates.fromJson(json['center'] as Map<String, dynamic>),
      radius: (json['radius'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CircleToJson(Circle instance) => <String, dynamic>{
      'center': instance.center,
      'radius': instance.radius,
    };

Rectangle _$RectangleFromJson(Map<String, dynamic> json) => Rectangle(
      low: Coordinates.fromJson(json['low'] as Map<String, dynamic>),
      high: Coordinates.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RectangleToJson(Rectangle instance) => <String, dynamic>{
      'low': instance.low,
      'high': instance.high,
    };
