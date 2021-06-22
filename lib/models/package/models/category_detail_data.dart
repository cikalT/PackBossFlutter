import 'package:json_annotation/json_annotation.dart';


part 'category_detail_data.g.dart';

@JsonSerializable()
class CategoryDetailData {
      CategoryDetailData();

  String id;
  @JsonKey(name: 'category_name') String categoryName;
  @JsonKey(name: 'is_fragile') bool isFragile;
  @JsonKey(name: 'is_hazardous') bool isHazardous;

  factory CategoryDetailData.fromJson(Map<String,dynamic> json) => _$CategoryDetailDataFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryDetailDataToJson(this);
}
