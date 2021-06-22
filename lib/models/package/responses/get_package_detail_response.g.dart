// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_package_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPackageDetailResponse _$GetPackageDetailResponseFromJson(
    Map<String, dynamic> json) {
  return GetPackageDetailResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = json['content'] == null
        ? null
        : PackageDetailData.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetPackageDetailResponseToJson(
        GetPackageDetailResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
