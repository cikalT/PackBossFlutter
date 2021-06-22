// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_tracking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionTrackingData _$TransactionTrackingDataFromJson(
    Map<String, dynamic> json) {
  return TransactionTrackingData()
    ..id = json['id'] as String
    ..idPackage = json['id_package'] as String
    ..receiptNumber = json['receipt_number'] as String
    ..pricePerKg = json['price_per_kg'] as String
    ..totalPrice = json['total_price'] as String
    ..status = json['status'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$TransactionTrackingDataToJson(
        TransactionTrackingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_package': instance.idPackage,
      'receipt_number': instance.receiptNumber,
      'price_per_kg': instance.pricePerKg,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
