// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddTransactionData _$AddTransactionDataFromJson(Map<String, dynamic> json) {
  return AddTransactionData()
    ..receiptNumber = json['receipt_number'] as String
    ..idPackage = json['id_package'] as String
    ..pricePerKg = json['price_per_kg'] as int
    ..totalPrice = json['total_price'] as int
    ..status = json['status'] as String
    ..id = json['id'] as String
    ..updatedAt = json['updated_at'] as String
    ..createdAt = json['created_at'] as String;
}

Map<String, dynamic> _$AddTransactionDataToJson(AddTransactionData instance) =>
    <String, dynamic>{
      'receipt_number': instance.receiptNumber,
      'id_package': instance.idPackage,
      'price_per_kg': instance.pricePerKg,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
