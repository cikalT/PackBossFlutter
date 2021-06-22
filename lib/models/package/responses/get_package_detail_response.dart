import 'package:json_annotation/json_annotation.dart';
import '../models/package_detail_data.dart';

part 'get_package_detail_response.g.dart';

@JsonSerializable()
class GetPackageDetailResponse {
      GetPackageDetailResponse();

  int statusCode;
  String messages;
  PackageDetailData content;

  factory GetPackageDetailResponse.fromJson(Map<String,dynamic> json) => _$GetPackageDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetPackageDetailResponseToJson(this);
}
