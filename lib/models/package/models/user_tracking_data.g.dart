// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tracking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTrackingData _$UserTrackingDataFromJson(Map<String, dynamic> json) {
  return UserTrackingData()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..email = json['email'] as String;
}

Map<String, dynamic> _$UserTrackingDataToJson(UserTrackingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
