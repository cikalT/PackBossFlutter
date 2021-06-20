import 'package:json_annotation/json_annotation.dart';
import '../models/category_data.dart';

part 'get_package_category_response.g.dart';

@JsonSerializable()
class GetPackageCategoryResponse {
      GetPackageCategoryResponse();

  int statusCode;
  String messages;
  List<CategoryData> content;

  factory GetPackageCategoryResponse.fromJson(Map<String,dynamic> json) => _$GetPackageCategoryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetPackageCategoryResponseToJson(this);
}
