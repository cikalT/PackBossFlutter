import 'package:json_annotation/json_annotation.dart';


part 'user_data.g.dart';

@JsonSerializable()
class UserData {
      UserData();

  String id;
  String name;
  String email;
  @JsonKey(name: 'email_verified_at') dynamic emailVerifiedAt;
  String phone;
  String status;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  String role;

  factory UserData.fromJson(Map<String,dynamic> json) => _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
