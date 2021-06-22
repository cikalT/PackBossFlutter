// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_logout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLogoutResponse _$GetLogoutResponseFromJson(Map<String, dynamic> json) {
  return GetLogoutResponse()
    ..status = json['status'] as int
    ..massages = json['massages'] as String
    ..content = json['content'];
}

Map<String, dynamic> _$GetLogoutResponseToJson(GetLogoutResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'massages': instance.massages,
      'content': instance.content,
    };
