import 'package:json_annotation/json_annotation.dart';


part 'get_logout_response.g.dart';

@JsonSerializable()
class GetLogoutResponse {
      GetLogoutResponse();

  int status;
  String massages;
  dynamic content;

  factory GetLogoutResponse.fromJson(Map<String,dynamic> json) => _$GetLogoutResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetLogoutResponseToJson(this);
}
