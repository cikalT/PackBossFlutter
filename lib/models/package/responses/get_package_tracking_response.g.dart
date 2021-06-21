// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_package_tracking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPackageTrackingResponse _$GetPackageTrackingResponseFromJson(
    Map<String, dynamic> json) {
  return GetPackageTrackingResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = (json['content'] as List)
        ?.map((e) =>
            e == null ? null : TrackingData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetPackageTrackingResponseToJson(
        GetPackageTrackingResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
