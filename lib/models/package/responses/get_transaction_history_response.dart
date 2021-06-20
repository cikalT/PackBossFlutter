import 'package:json_annotation/json_annotation.dart';
import '../models/transaction_data.dart';

part 'get_transaction_history_response.g.dart';

@JsonSerializable()
class GetTransactionHistoryResponse {
      GetTransactionHistoryResponse();

  int statusCode;
  String messages;
  List<TransactionData> content;

  factory GetTransactionHistoryResponse.fromJson(Map<String,dynamic> json) => _$GetTransactionHistoryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetTransactionHistoryResponseToJson(this);
}
