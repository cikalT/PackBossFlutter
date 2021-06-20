import 'package:json_annotation/json_annotation.dart';


part 'add_package_data.g.dart';

@JsonSerializable()
class AddPackageData {
      AddPackageData();

  @JsonKey(name: 'id_user') String idUser;
  @JsonKey(name: 'id_category') String idCategory;
  @JsonKey(name: 'package_name') String packageName;
  @JsonKey(name: 'recepient_name') String recepientName;
  @JsonKey(name: 'recepient_phone') String recepientPhone;
  String weight;
  String dimension;
  String id;
  @JsonKey(name: 'updated_at') String updatedAt;
  @JsonKey(name: 'created_at') String createdAt;

  factory AddPackageData.fromJson(Map<String,dynamic> json) => _$AddPackageDataFromJson(json);
  Map<String, dynamic> toJson() => _$AddPackageDataToJson(this);
}
