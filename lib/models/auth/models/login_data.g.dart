// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return LoginData()
    ..user = json['user'] == null
        ? null
        : UserData.fromJson(json['user'] as Map<String, dynamic>)
    ..accessToken = json['accessToken'] as String
    ..tokenType = json['tokenType'] as String;
}

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
    };
