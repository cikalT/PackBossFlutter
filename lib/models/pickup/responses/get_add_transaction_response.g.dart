// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_add_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddTransactionResponse _$GetAddTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return GetAddTransactionResponse()
    ..statusCode = json['statusCode'] as int
    ..messages = json['messages'] as String
    ..content = json['content'] == null
        ? null
        : AddTransactionData.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetAddTransactionResponseToJson(
        GetAddTransactionResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messages': instance.messages,
      'content': instance.content,
    };
