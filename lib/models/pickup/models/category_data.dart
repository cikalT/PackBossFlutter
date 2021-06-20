import 'package:json_annotation/json_annotation.dart';


part 'category_data.g.dart';

@JsonSerializable()
class CategoryData {
      CategoryData();

  String id;
  @JsonKey(name: 'category_name') String categoryName;
  @JsonKey(name: 'is_fragile') bool isFragile;
  @JsonKey(name: 'is_hazardous') bool isHazardous;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;

  factory CategoryData.fromJson(Map<String,dynamic> json) => _$CategoryDataFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryDataToJson(this);
}
