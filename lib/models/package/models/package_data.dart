import 'package:json_annotation/json_annotation.dart';


part 'package_data.g.dart';

@JsonSerializable()
class PackageData {
      PackageData();

  String id;
  @JsonKey(name: 'id_user') String idUser;
  @JsonKey(name: 'id_destination') String idDestination;
  @JsonKey(name: 'id_origin') String idOrigin;
  @JsonKey(name: 'id_category') String idCategory;
  @JsonKey(name: 'package_name') String packageName;
  @JsonKey(name: 'recepient_name') String recepientName;
  @JsonKey(name: 'recepient_phone') String recepientPhone;
  String weight;
  String dimension;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;

  factory PackageData.fromJson(Map<String,dynamic> json) => _$PackageDataFromJson(json);
  Map<String, dynamic> toJson() => _$PackageDataToJson(this);
}
