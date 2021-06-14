import 'package:json_annotation/json_annotation.dart';
import '../models/register_data.dart';

part 'get_register_response.g.dart';

@JsonSerializable()
class GetRegisterResponse {
      GetRegisterResponse();

  int statusCode;
  String massages;
  RegisterData content;

  factory GetRegisterResponse.fromJson(Map<String,dynamic> json) => _$GetRegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetRegisterResponseToJson(this);
}
