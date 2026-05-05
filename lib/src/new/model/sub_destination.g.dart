// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_destination.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [SubDestination] is to generate the code for a copyWith(...) function.
extension $SubDestinationCopyWithExtension on SubDestination {
  SubDestination copyWith({String? name, String? id}) {
    return SubDestination(name: name ?? this.name, id: id ?? this.id);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubDestination _$SubDestinationFromJson(Map<String, dynamic> json) =>
    SubDestination(name: json['name'] as String?, id: json['id'] as String?);

Map<String, dynamic> _$SubDestinationToJson(SubDestination instance) =>
    <String, dynamic>{'name': ?instance.name, 'id': ?instance.id};
