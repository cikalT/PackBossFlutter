import 'package:json_annotation/json_annotation.dart';
import '../models/login_data.dart';

part 'get_login_response.g.dart';

@JsonSerializable()
class GetLoginResponse {
      GetLoginResponse();

  int statusCode;
  String massages;
  LoginData content;

  factory GetLoginResponse.fromJson(Map<String,dynamic> json) => _$GetLoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetLoginResponseToJson(this);
}
