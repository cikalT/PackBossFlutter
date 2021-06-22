import 'package:json_annotation/json_annotation.dart';
import 'user_tracking_data.dart';
import 'transport_tracking_data.dart';
import 'transaction_tracking_data.dart';

part 'tracking_data.g.dart';

@JsonSerializable()
class TrackingData {
      TrackingData();

  String id;
  @JsonKey(name: 'id_transaction') String idTransaction;
  @JsonKey(name: 'id_transport') String idTransport;
  @JsonKey(name: 'id_user') String idUser;
  @JsonKey(name: 'tracking_status') String trackingStatus;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'updated_at') String updatedAt;
  UserTrackingData user;
  TransportTrackingData transport;
  TransactionTrackingData transaction;

  factory TrackingData.fromJson(Map<String,dynamic> json) => _$TrackingDataFromJson(json);
  Map<String, dynamic> toJson() => _$TrackingDataToJson(this);
}
