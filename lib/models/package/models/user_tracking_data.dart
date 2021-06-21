import 'package:json_annotation/json_annotation.dart';


part 'user_tracking_data.g.dart';

@JsonSerializable()
class UserTrackingData {
      UserTrackingData();

  String id;
  String name;
  String email;

  factory UserTrackingData.fromJson(Map<String,dynamic> json) => _$UserTrackingDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserTrackingDataToJson(this);
}
