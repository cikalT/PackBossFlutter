import 'package:json_annotation/json_annotation.dart';
import '../models/add_package_data.dart';

part 'get_add_package_response.g.dart';

@JsonSerializable()
class GetAddPackageResponse {
      GetAddPackageResponse();

  int statusCode;
  String messages;
  AddPackageData content;

  factory GetAddPackageResponse.fromJson(Map<String,dynamic> json) => _$GetAddPackageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetAddPackageResponseToJson(this);
}
