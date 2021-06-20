// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_saved_destination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSavedDestinationResponse _$GetSavedDestinationResponseFromJson(
    Map<String, dynamic> json) {
  return GetSavedDestinationResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = json['content'] == null
        ? null
        : SavedDestinationData.fromJson(
            json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetSavedDestinationResponseToJson(
        GetSavedDestinationResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
