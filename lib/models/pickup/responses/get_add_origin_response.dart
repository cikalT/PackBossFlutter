import 'package:json_annotation/json_annotation.dart';
import '../models/origin_data.dart';

part 'get_add_origin_response.g.dart';

@JsonSerializable()
class GetAddOriginResponse {
      GetAddOriginResponse();

  int statusCode;
  String messages;
  OriginData content;

  factory GetAddOriginResponse.fromJson(Map<String,dynamic> json) => _$GetAddOriginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetAddOriginResponseToJson(this);
}
