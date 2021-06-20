import 'package:json_annotation/json_annotation.dart';
import '../models/saved_destination_data.dart';

part 'get_saved_destination_response.g.dart';

@JsonSerializable()
class GetSavedDestinationResponse {
      GetSavedDestinationResponse();

  int statusCode;
  String messages;
  SavedDestinationData content;

  factory GetSavedDestinationResponse.fromJson(Map<String,dynamic> json) => _$GetSavedDestinationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetSavedDestinationResponseToJson(this);
}
