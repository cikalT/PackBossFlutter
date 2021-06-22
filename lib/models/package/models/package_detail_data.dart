import 'package:json_annotation/json_annotation.dart';
import 'user_detail_data.dart';
import 'category_detail_data.dart';

part 'package_detail_data.g.dart';

@JsonSerializable()
class PackageDetailData {
      PackageDetailData();

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
  UserDetailData user;
  CategoryDetailData category;

  factory PackageDetailData.fromJson(Map<String,dynamic> json) => _$PackageDetailDataFromJson(json);
  Map<String, dynamic> toJson() => _$PackageDetailDataToJson(this);
}
