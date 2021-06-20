// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transaction_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTransactionHistoryResponse _$GetTransactionHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return GetTransactionHistoryResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = (json['content'] as List)
        ?.map((e) => e == null
            ? null
            : TransactionData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetTransactionHistoryResponseToJson(
        GetTransactionHistoryResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
