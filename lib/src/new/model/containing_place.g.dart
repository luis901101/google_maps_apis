// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containing_place.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [ContainingPlace] is to generate the code for a copyWith(...) function.
extension $ContainingPlaceCopyWithExtension on ContainingPlace {
  ContainingPlace copyWith({String? name, String? id}) {
    return ContainingPlace(name: name ?? this.name, id: id ?? this.id);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainingPlace _$ContainingPlaceFromJson(Map<String, dynamic> json) =>
    ContainingPlace(name: json['name'] as String?, id: json['id'] as String?);

Map<String, dynamic> _$ContainingPlaceToJson(ContainingPlace instance) =>
    <String, dynamic>{'name': ?instance.name, 'id': ?instance.id};
