// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_add_destination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddDestinationResponse _$GetAddDestinationResponseFromJson(
    Map<String, dynamic> json) {
  return GetAddDestinationResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = json['content'] == null
        ? null
        : DestinationData.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetAddDestinationResponseToJson(
        GetAddDestinationResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
