import 'package:json_annotation/json_annotation.dart';


part 'user_register.g.dart';

@JsonSerializable()
class UserRegister {
      UserRegister();

  String name;
  String email;
  String phone;
  String id;
  @JsonKey(name: 'updated_at') String updatedAt;
  @JsonKey(name: 'created_at') String createdAt;

  factory UserRegister.fromJson(Map<String,dynamic> json) => _$UserRegisterFromJson(json);
  Map<String, dynamic> toJson() => _$UserRegisterToJson(this);
}
