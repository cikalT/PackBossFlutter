// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_origin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedOriginData _$SavedOriginDataFromJson(Map<String, dynamic> json) {
  return SavedOriginData()
    ..id = json['id'] as String
    ..idUser = json['id_user'] as String
    ..countryName = json['country_name'] as String
    ..provinceName = json['province_name'] as String
    ..regionName = json['region_name'] as String
    ..postalCode = json['postal_code'] as String
    ..detailAddress = json['detail_address'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..users = json['users'] == null
        ? null
        : UserData.fromJson(json['users'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SavedOriginDataToJson(SavedOriginData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.idUser,
      'country_name': instance.countryName,
      'province_name': instance.provinceName,
      'region_name': instance.regionName,
      'postal_code': instance.postalCode,
      'detail_address': instance.detailAddress,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'users': instance.users,
    };
