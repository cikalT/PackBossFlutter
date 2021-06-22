// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_detail_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDetailData _$CategoryDetailDataFromJson(Map<String, dynamic> json) {
  return CategoryDetailData()
    ..id = json['id'] as String
    ..categoryName = json['category_name'] as String
    ..isFragile = json['is_fragile'] as bool
    ..isHazardous = json['is_hazardous'] as bool;
}

Map<String, dynamic> _$CategoryDetailDataToJson(CategoryDetailData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.categoryName,
      'is_fragile': instance.isFragile,
      'is_hazardous': instance.isHazardous,
    };
