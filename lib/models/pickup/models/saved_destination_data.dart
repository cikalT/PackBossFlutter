import 'package:json_annotation/json_annotation.dart';


part 'saved_destination_data.g.dart';

@JsonSerializable()
class SavedDestinationData {
      SavedDestinationData();

  String id;
  @JsonKey(name: 'country_name') String countryName;
  @JsonKey(name: 'province_name') String provinceName;
  @JsonKey(name: 'region_name') String regionName;
  @JsonKey(name: 'postal_code') String postalCode;
  @JsonKey(name: 'detail_address') String detailAddress;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;

  factory SavedDestinationData.fromJson(Map<String,dynamic> json) => _$SavedDestinationDataFromJson(json);
  Map<String, dynamic> toJson() => _$SavedDestinationDataToJson(this);
}
