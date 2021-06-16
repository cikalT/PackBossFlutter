import 'package:json_annotation/json_annotation.dart';
import '../models/add_destination_data.dart';

part 'get_add_destination_response.g.dart';

@JsonSerializable()
class GetAddDestinationResponse {
      GetAddDestinationResponse();

  int statusCode;
  String messages;
  AddDestinationData content;

  factory GetAddDestinationResponse.fromJson(Map<String,dynamic> json) => _$GetAddDestinationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetAddDestinationResponseToJson(this);
}
