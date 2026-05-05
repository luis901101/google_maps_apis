// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plus_code.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

/// This Extension on [PlusCode] is to generate the code for a copyWith(...) function.
extension $PlusCodeCopyWithExtension on PlusCode {
  PlusCode copyWith({String? globalCode, String? compoundCode}) {
    return PlusCode(
      globalCode: globalCode ?? this.globalCode,
      compoundCode: compoundCode ?? this.compoundCode,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) => PlusCode(
  globalCode: json['globalCode'] as String?,
  compoundCode: json['compoundCode'] as String?,
);

Map<String, dynamic> _$PlusCodeToJson(PlusCode instance) => <String, dynamic>{
  'globalCode': ?instance.globalCode,
  'compoundCode': ?instance.compoundCode,
};
