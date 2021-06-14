import 'package:json_annotation/json_annotation.dart';


part 'screen_arguments.g.dart';

@JsonSerializable()
class ScreenArguments {
      ScreenArguments();

  String id;
  String title;
  String description;
  String name;
  @JsonKey() dynamic data;
  @JsonKey(name: 'list_data') List<dynamic> listData;
  @JsonKey(name: 'map_dynamic') Map<String,dynamic> mapDynamic;
  @JsonKey(name: 'map_string') Map<String,String> mapString;
  @JsonKey(name: 'map_int') Map<String,int> mapInt;
  @JsonKey(name: 'map_double') Map<String,double> mapDouble;
  @JsonKey(name: 'map_bool') Map<String,bool> mapBool;
  @JsonKey(name: 'is_edit') bool isEdit;
  bool state;
  @JsonKey(name: 'number_int') int numberInt;
  @JsonKey(name: 'number_double') double numberDouble;

  factory ScreenArguments.fromJson(Map<String,dynamic> json) => _$ScreenArgumentsFromJson(json);
  Map<String, dynamic> toJson() => _$ScreenArgumentsToJson(this);
}
