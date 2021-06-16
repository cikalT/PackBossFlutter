import 'package:json_annotation/json_annotation.dart';
import '../models/saved_origin_data.dart';

part 'get_saved_origin_response.g.dart';

@JsonSerializable()
class GetSavedOriginResponse {
      GetSavedOriginResponse();

  int statusCode;
  String messages;
  SavedOriginData content;

  factory GetSavedOriginResponse.fromJson(Map<String,dynamic> json) => _$GetSavedOriginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetSavedOriginResponseToJson(this);
}
