// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_add_package_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddPackageResponse _$GetAddPackageResponseFromJson(
    Map<String, dynamic> json) {
  return GetAddPackageResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = json['content'] == null
        ? null
        : AddPackageData.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetAddPackageResponseToJson(
        GetAddPackageResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
