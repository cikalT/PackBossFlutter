import 'package:json_annotation/json_annotation.dart';


part 'transaction_tracking_data.g.dart';

@JsonSerializable()
class TransactionTrackingData {
      TransactionTrackingData();

  String id;
  @JsonKey(name: 'id_package') String idPackage;
  @JsonKey(name: 'receipt_number') String receiptNumber;
  @JsonKey(name: 'price_per_kg') String pricePerKg;
  @JsonKey(name: 'total_price') String totalPrice;
  String status;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;

  factory TransactionTrackingData.fromJson(Map<String,dynamic> json) => _$TransactionTrackingDataFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionTrackingDataToJson(this);
}
