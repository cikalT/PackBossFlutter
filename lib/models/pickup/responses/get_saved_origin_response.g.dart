// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_saved_origin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSavedOriginResponse _$GetSavedOriginResponseFromJson(
    Map<String, dynamic> json) {
  return GetSavedOriginResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = json['content'] == null
        ? null
        : SavedOriginData.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetSavedOriginResponseToJson(
        GetSavedOriginResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
