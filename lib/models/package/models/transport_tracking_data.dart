import 'package:json_annotation/json_annotation.dart';


part 'transport_tracking_data.g.dart';

@JsonSerializable()
class TransportTrackingData {
      TransportTrackingData();

  String id;
  String name;
  @JsonKey(name: 'transport_code') String transportCode;
  @JsonKey(name: 'license_number') String licenseNumber;

  factory TransportTrackingData.fromJson(Map<String,dynamic> json) => _$TransportTrackingDataFromJson(json);
  Map<String, dynamic> toJson() => _$TransportTrackingDataToJson(this);
}
