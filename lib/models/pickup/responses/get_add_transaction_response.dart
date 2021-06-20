import 'package:json_annotation/json_annotation.dart';
import '../models/add_transaction_data.dart';

part 'get_add_transaction_response.g.dart';

@JsonSerializable()
class GetAddTransactionResponse {
      GetAddTransactionResponse();

  int statusCode;
  String messages;
  AddTransactionData content;

  factory GetAddTransactionResponse.fromJson(Map<String,dynamic> json) => _$GetAddTransactionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetAddTransactionResponseToJson(this);
}
