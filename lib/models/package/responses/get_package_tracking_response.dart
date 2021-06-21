import 'package:json_annotation/json_annotation.dart';
import '../models/tracking_data.dart';

part 'get_package_tracking_response.g.dart';

@JsonSerializable()
class GetPackageTrackingResponse {
      GetPackageTrackingResponse();

  int statusCode;
  String messages;
  List<TrackingData> content;

  factory GetPackageTrackingResponse.fromJson(Map<String,dynamic> json) => _$GetPackageTrackingResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetPackageTrackingResponseToJson(this);
}
