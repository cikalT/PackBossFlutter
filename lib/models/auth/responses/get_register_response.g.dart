// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRegisterResponse _$GetRegisterResponseFromJson(Map<String, dynamic> json) {
  return GetRegisterResponse()
    ..statusCode = json['statusCode'] as int
    ..massages = json['massages'] as String
    ..content = json['content'] == null
        ? null
        : RegisterData.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetRegisterResponseToJson(
        GetRegisterResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'massages': instance.massages,
      'content': instance.content,
    };
