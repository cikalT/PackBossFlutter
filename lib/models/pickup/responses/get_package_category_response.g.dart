// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_package_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPackageCategoryResponse _$GetPackageCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return GetPackageCategoryResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = (json['content'] as List)
        ?.map((e) =>
            e == null ? null : CategoryData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetPackageCategoryResponseToJson(
        GetPackageCategoryResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
