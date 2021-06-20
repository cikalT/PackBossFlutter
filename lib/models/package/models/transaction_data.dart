import 'package:json_annotation/json_annotation.dart';
import 'package_data.dart';

part 'transaction_data.g.dart';

@JsonSerializable()
class TransactionData {
      TransactionData();

  String id;
  @JsonKey(name: 'id_package') String idPackage;
  @JsonKey(name: 'receipt_number') String receiptNumber;
  @JsonKey(name: 'price_per_kg') String pricePerKg;
  @JsonKey(name: 'total_price') String totalPrice;
  String status;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  PackageData package;

  factory TransactionData.fromJson(Map<String,dynamic> json) => _$TransactionDataFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionDataToJson(this);
}
