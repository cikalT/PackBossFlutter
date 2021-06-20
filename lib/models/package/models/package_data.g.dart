// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageData _$PackageDataFromJson(Map<String, dynamic> json) {
  return PackageData()
    ..id = json['id'] as String
    ..idUser = json['id_user'] as String
    ..idDestination = json['id_destination'] as String
    ..idOrigin = json['id_origin'] as String
    ..idCategory = json['id_category'] as String
    ..packageName = json['package_name'] as String
    ..recepientName = json['recepient_name'] as String
    ..recepientPhone = json['recepient_phone'] as String
    ..weight = json['weight'] as String
    ..dimension = json['dimension'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$PackageDataToJson(PackageData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.idUser,
      'id_destination': instance.idDestination,
      'id_origin': instance.idOrigin,
      'id_category': instance.idCategory,
      'package_name': instance.packageName,
      'recepient_name': instance.recepientName,
      'recepient_phone': instance.recepientPhone,
      'weight': instance.weight,
      'dimension': instance.dimension,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
