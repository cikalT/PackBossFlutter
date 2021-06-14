import 'package:json_annotation/json_annotation.dart';
import 'user_register.dart';

part 'register_data.g.dart';

@JsonSerializable()
class RegisterData {
      RegisterData();

  UserRegister user;
  String accessToken;
  String tokenType;

  factory RegisterData.fromJson(Map<String,dynamic> json) => _$RegisterDataFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterDataToJson(this);
}
