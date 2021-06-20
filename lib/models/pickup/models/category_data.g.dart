// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return CategoryData()
    ..id = json['id'] as String
    ..categoryName = json['category_name'] as String
    ..isFragile = json['is_fragile'] as bool
    ..isHazardous = json['is_hazardous'] as bool
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$CategoryDataToJson(CategoryData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.categoryName,
      'is_fragile': instance.isFragile,
      'is_hazardous': instance.isHazardous,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
