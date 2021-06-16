// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageUserData _$PackageUserDataFromJson(Map<String, dynamic> json) {
  return PackageUserData()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..emailVerifiedAt = json['email_verified_at']
    ..phone = json['phone'] as String
    ..status = json['status'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..role = json['role'] as String;
}

Map<String, dynamic> _$PackageUserDataToJson(PackageUserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'phone': instance.phone,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'role': instance.role,
    };
