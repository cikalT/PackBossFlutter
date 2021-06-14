// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_arguments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScreenArguments _$ScreenArgumentsFromJson(Map<String, dynamic> json) {
  return ScreenArguments()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..name = json['name'] as String
    ..data = json['data']
    ..listData = json['list_data'] as List
    ..mapDynamic = json['map_dynamic'] as Map<String, dynamic>
    ..mapString = (json['map_string'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..mapInt = (json['map_int'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as int),
    )
    ..mapDouble = (json['map_double'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    )
    ..mapBool = (json['map_bool'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    )
    ..isEdit = json['is_edit'] as bool
    ..state = json['state'] as bool
    ..numberInt = json['number_int'] as int
    ..numberDouble = (json['number_double'] as num)?.toDouble();
}

Map<String, dynamic> _$ScreenArgumentsToJson(ScreenArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'name': instance.name,
      'data': instance.data,
      'list_data': instance.listData,
      'map_dynamic': instance.mapDynamic,
      'map_string': instance.mapString,
      'map_int': instance.mapInt,
      'map_double': instance.mapDouble,
      'map_bool': instance.mapBool,
      'is_edit': instance.isEdit,
      'state': instance.state,
      'number_int': instance.numberInt,
      'number_double': instance.numberDouble,
    };
