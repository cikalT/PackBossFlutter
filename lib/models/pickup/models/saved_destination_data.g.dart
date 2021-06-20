// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_destination_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedDestinationData _$SavedDestinationDataFromJson(Map<String, dynamic> json) {
  return SavedDestinationData()
    ..id = json['id'] as String
    ..countryName = json['country_name'] as String
    ..provinceName = json['province_name'] as String
    ..regionName = json['region_name'] as String
    ..postalCode = json['postal_code'] as String
    ..detailAddress = json['detail_address'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$SavedDestinationDataToJson(
        SavedDestinationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_name': instance.countryName,
      'province_name': instance.provinceName,
      'region_name': instance.regionName,
      'postal_code': instance.postalCode,
      'detail_address': instance.detailAddress,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
