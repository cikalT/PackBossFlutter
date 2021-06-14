// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) {
  return RegisterData()
    ..user = json['user'] == null
        ? null
        : UserRegister.fromJson(json['user'] as Map<String, dynamic>)
    ..accessToken = json['accessToken'] as String
    ..tokenType = json['tokenType'] as String;
}

Map<String, dynamic> _$RegisterDataToJson(RegisterData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
    };
