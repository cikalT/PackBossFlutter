import 'package:json_annotation/json_annotation.dart';


part 'add_destination_data.g.dart';

@JsonSerializable()
class AddDestinationData {
      AddDestinationData();

  @JsonKey(name: 'country_name') String countryName;
  @JsonKey(name: 'province_name') String provinceName;
  @JsonKey(name: 'region_name') String regionName;
  @JsonKey(name: 'postal_code') String postalCode;
  @JsonKey(name: 'detail_address') String detailAddress;
  String id;
  @JsonKey(name: 'updated_at') String updatedAt;
  @JsonKey(name: 'created_at') String createdAt;

  factory AddDestinationData.fromJson(Map<String,dynamic> json) => _$AddDestinationDataFromJson(json);
  Map<String, dynamic> toJson() => _$AddDestinationDataToJson(this);
}
