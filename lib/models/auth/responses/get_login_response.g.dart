// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLoginResponse _$GetLoginResponseFromJson(Map<String, dynamic> json) {
  return GetLoginResponse()
    ..statusCode = json['statusCode'] as int
    ..massages = json['massages'] as String
    ..content = json['content'] == null
        ? null
        : LoginData.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetLoginResponseToJson(GetLoginResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'massages': instance.massages,
      'content': instance.content,
    };
