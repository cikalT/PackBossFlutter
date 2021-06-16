import 'package:json_annotation/json_annotation.dart';
import '../../auth/models/user_data.dart';

part 'saved_origin_data.g.dart';

@JsonSerializable()
class SavedOriginData {
      SavedOriginData();

  String id;
  @JsonKey(name: 'id_user') String idUser;
  @JsonKey(name: 'country_name') String countryName;
  @JsonKey(name: 'province_name') String provinceName;
  @JsonKey(name: 'region_name') String regionName;
  @JsonKey(name: 'postal_code') String postalCode;
  @JsonKey(name: 'detail_address') String detailAddress;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  UserData users;

  factory SavedOriginData.fromJson(Map<String,dynamic> json) => _$SavedOriginDataFromJson(json);
  Map<String, dynamic> toJson() => _$SavedOriginDataToJson(this);
}
