// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'origin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OriginData _$OriginDataFromJson(Map<String, dynamic> json) {
  return OriginData()
    ..idUser = json['id_user'] as String
    ..countryName = json['country_name'] as String
    ..provinceName = json['province_name'] as String
    ..regionName = json['region_name'] as String
    ..postalCode = json['postal_code'] as String
    ..detailAddress = json['detail_address'] as String
    ..id = json['id'] as String
    ..updatedAt = json['updated_at'] as String
    ..createdAt = json['created_at'] as String;
}

Map<String, dynamic> _$OriginDataToJson(OriginData instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'country_name': instance.countryName,
      'province_name': instance.provinceName,
      'region_name': instance.regionName,
      'postal_code': instance.postalCode,
      'detail_address': instance.detailAddress,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
