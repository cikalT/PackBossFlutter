import 'package:json_annotation/json_annotation.dart';
import '../models/add_origin_data.dart';

part 'get_add_origin_response.g.dart';

@JsonSerializable()
class GetAddOriginResponse {
      GetAddOriginResponse();

  int statusCode;
  String messages;
  AddOriginData content;

  factory GetAddOriginResponse.fromJson(Map<String,dynamic> json) => _$GetAddOriginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetAddOriginResponseToJson(this);
}
