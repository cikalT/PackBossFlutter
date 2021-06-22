import 'package:json_annotation/json_annotation.dart';


part 'user_detail_data.g.dart';

@JsonSerializable()
class UserDetailData {
      UserDetailData();

  String id;
  String name;
  String phone;
  String email;

  factory UserDetailData.fromJson(Map<String,dynamic> json) => _$UserDetailDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDetailDataToJson(this);
}
