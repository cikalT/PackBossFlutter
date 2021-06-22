// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailData _$UserDetailDataFromJson(Map<String, dynamic> json) {
  return UserDetailData()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..phone = json['phone'] as String
    ..email = json['email'] as String;
}

Map<String, dynamic> _$UserDetailDataToJson(UserDetailData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
    };
