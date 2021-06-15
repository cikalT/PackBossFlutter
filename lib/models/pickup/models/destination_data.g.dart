// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationData _$DestinationDataFromJson(Map<String, dynamic> json) {
  return DestinationData()
    ..countryName = json['country_name'] as String
    ..provinceName = json['province_name'] as String
    ..regionName = json['region_name'] as String
    ..postalCode = json['postal_code'] as String
    ..detailAddress = json['detail_address'] as String
    ..id = json['id'] as String
    ..updatedAt = json['updated_at'] as String
    ..createdAt = json['created_at'] as String;
}

Map<String, dynamic> _$DestinationDataToJson(DestinationData instance) =>
    <String, dynamic>{
      'country_name': instance.countryName,
      'province_name': instance.provinceName,
      'region_name': instance.regionName,
      'postal_code': instance.postalCode,
      'detail_address': instance.detailAddress,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
