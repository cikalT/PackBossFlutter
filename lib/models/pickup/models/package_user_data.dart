import 'package:json_annotation/json_annotation.dart';


part 'package_user_data.g.dart';

@JsonSerializable()
class PackageUserData {
      PackageUserData();

  String id;
  String name;
  String email;
  @JsonKey(name: 'email_verified_at') dynamic emailVerifiedAt;
  String phone;
  String status;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  String role;

  factory PackageUserData.fromJson(Map<String,dynamic> json) => _$PackageUserDataFromJson(json);
  Map<String, dynamic> toJson() => _$PackageUserDataToJson(this);
}
