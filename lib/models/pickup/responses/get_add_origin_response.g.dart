// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_add_origin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddOriginResponse _$GetAddOriginResponseFromJson(Map<String, dynamic> json) {
  return GetAddOriginResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = json['content'] == null
        ? null
        : AddOriginData.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetAddOriginResponseToJson(
        GetAddOriginResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
