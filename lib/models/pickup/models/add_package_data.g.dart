// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_package_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPackageData _$AddPackageDataFromJson(Map<String, dynamic> json) {
  return AddPackageData()
    ..idUser = json['id_user'] as String
    ..idCategory = json['id_category'] as String
    ..packageName = json['package_name'] as String
    ..recepientName = json['recepient_name'] as String
    ..recepientPhone = json['recepient_phone'] as String
    ..weight = json['weight'] as String
    ..dimension = json['dimension'] as String
    ..id = json['id'] as String
    ..updatedAt = json['updated_at'] as String
    ..createdAt = json['created_at'] as String;
}

Map<String, dynamic> _$AddPackageDataToJson(AddPackageData instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'id_category': instance.idCategory,
      'package_name': instance.packageName,
      'recepient_name': instance.recepientName,
      'recepient_phone': instance.recepientPhone,
      'weight': instance.weight,
      'dimension': instance.dimension,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
