import 'dart:convert';

abstract class Jsonable<T extends Object> {
  static const int jsonParserError = 1000;

  static Map<String, dynamic>? jsonableToJson(Jsonable? value) =>
      value?.toJson();
  static Jsonable<T>? jsonableFromJson<T extends Object>(
          Map<String, dynamic>? json) =>
      null;

  static String? dynamicToJsonString(dynamic value) => value?.toString();
  static String? doubleToJsonString2Digits(double? value) =>
      value?.toStringAsFixed(2);

  static int? intFromJson(dynamic json) => int.tryParse(json?.toString() ?? '');
  static dynamic intReadValue(Map map, String key) =>
      int.tryParse(map[key]?.toString() ?? '');

  static double? doubleFromJson(dynamic json) =>
      double.tryParse(json?.toString() ?? '');
  static num? numFromJson(dynamic json) => num.tryParse(json?.toString() ?? '');
  static String? stringFromJson(dynamic json) => json?.toString();

  static dynamic stringToMapReadValue(Map map, String key) {
    final data = map[key];
    if (data is Map) return data;
    if (data is String) return jsonDecode(data);
    return data;
  }

  const Jsonable();

  ///
  /// This is just to suggest children to implement a named constructor to
  /// support creating objects fromJson(...) and fromJsonString(...) as easy as
  /// T.build().fromJson(...) or T.build().fromJsonString(...)

  @override
  String toString() => toJsonString();

  Map<String, dynamic> toJson();

  Map<String, dynamic> toJsonMap() => toJson();

  T? fromJsonMap(Map<String, dynamic>? json);

  String toJsonString() => jsonEncode(this);

  T? fromJsonString(String? json) =>
      fromJsonStringGeneric<T>(json, fromJsonMap);

  List<T>? fromJsonStringList(String? jsonStringList) =>
      fromJsonStringListGeneric<T>(jsonStringList, fromJsonMap);

  List<T>? fromJsonList(List<dynamic>? jsonList) =>
      fromJsonListGeneric<T>(jsonList, fromJsonMap);

  static T? fromJsonStringGeneric<T>(
          String? json, T? Function(Map<String, dynamic>? json) fromJsonMap) =>
      (json?.isNotEmpty ?? true) ? fromJsonMap.call(jsonDecode(json!)) : null;

  static List<T>? fromJsonStringListGeneric<T>(String? jsonStringList,
          T? Function(Map<String, dynamic> json) fromJsonMap) =>
      (jsonStringList?.isNotEmpty ?? true)
          ? fromJsonListGeneric(jsonDecode(jsonStringList!), fromJsonMap)
          : null;

  static List<T>? fromJsonListGeneric<T>(List<dynamic>? jsonList,
      T? Function(Map<String, dynamic> json) fromJsonMap) {
    if (jsonList == null) return null;
    if (jsonList.isEmpty) return [];
    List<T> list = jsonList.map((dynamic json) {
      if (json is! Map<String, dynamic>) {
        throw Exception(
            'fromJsonList(List<dynamic> jsonList) expects a Json Map<String, dynamic> but other object was found instead');
      }
      return fromJsonMap.call(json)!;
    }).toList();
    return list;
  }

  List<String> toFieldsMask({String? parentKey}) {
    List<String> fields = [];
    final map = toJson();
    fields.addAll(_searchInMap(parentKey: parentKey, map: map));
    return fields;
  }

  List<String> _searchInMap({String? parentKey, Map map = const {}}) {
    parentKey = parentKey != null
        ? !parentKey.endsWith('.')
            ? '$parentKey.'
            : parentKey
        : '';
    List<String> fields = [];
    for (final MapEntry(key: key, value: value) in map.entries) {
      fields.addAll(_checkValue(key: '$parentKey$key', value: value));
    }
    return fields;
  }

  List<String> _searchInList({String? parentKey, List list = const []}) {
    parentKey = parentKey != null
        ? !parentKey.endsWith('.')
            ? '$parentKey.'
            : parentKey
        : '';
    List<String> fields = [];
    for (final value in list) {
      fields.addAll(_checkValue(key: parentKey, value: value));
    }
    return fields;
  }

  List<String> _checkValue({required String key, dynamic value}) {
    List<String> fields = [];
    if (value != null) {
      if (value is Jsonable) {
        final results = _searchInMap(parentKey: key, map: value.toJson());
        if (results.isNotEmpty) {
          fields.addAll(results);
        } else {
          fields.add(key);
        }
      } else if (value is Map) {
        final results = _searchInMap(parentKey: key, map: value);
        if (results.isNotEmpty) {
          fields.addAll(results);
        } else {
          fields.add(key);
        }
      } else if (value is List) {
        final results = _searchInList(parentKey: key, list: value);
        if (results.isNotEmpty) {
          fields.addAll(results);
        } else {
          fields.add(key);
        }
      } else {
        fields.add(key);
      }
    }
    return fields;
  }
}
