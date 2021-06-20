import 'package:json_annotation/json_annotation.dart';


part 'add_transaction_data.g.dart';

@JsonSerializable()
class AddTransactionData {
      AddTransactionData();

  @JsonKey(name: 'receipt_number') String receiptNumber;
  @JsonKey(name: 'id_package') String idPackage;
  @JsonKey(name: 'price_per_kg') int pricePerKg;
  @JsonKey(name: 'total_price') int totalPrice;
  String status;
  String id;
  @JsonKey(name: 'updated_at') String updatedAt;
  @JsonKey(name: 'created_at') String createdAt;

  factory AddTransactionData.fromJson(Map<String,dynamic> json) => _$AddTransactionDataFromJson(json);
  Map<String, dynamic> toJson() => _$AddTransactionDataToJson(this);
}
