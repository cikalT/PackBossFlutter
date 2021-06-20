// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return TransactionData()
    ..id = json['id'] as String
    ..idPackage = json['id_package'] as String
    ..receiptNumber = json['receipt_number'] as String
    ..pricePerKg = json['price_per_kg'] as String
    ..totalPrice = json['total_price'] as String
    ..status = json['status'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..package = json['package'] == null
        ? null
        : PackageData.fromJson(json['package'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionDataToJson(TransactionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_package': instance.idPackage,
      'receipt_number': instance.receiptNumber,
      'price_per_kg': instance.pricePerKg,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'package': instance.package,
    };
