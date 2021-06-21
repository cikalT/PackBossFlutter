// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingData _$TrackingDataFromJson(Map<String, dynamic> json) {
  return TrackingData()
    ..id = json['id'] as String
    ..idTransaction = json['id_transaction'] as String
    ..idTransport = json['id_transport'] as String
    ..idUser = json['id_user'] as String
    ..trackingStatus = json['tracking_status'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..user = json['user'] == null
        ? null
        : UserTrackingData.fromJson(json['user'] as Map<String, dynamic>)
    ..transport = json['transport'] == null
        ? null
        : TransportTrackingData.fromJson(
            json['transport'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TrackingDataToJson(TrackingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_transaction': instance.idTransaction,
      'id_transport': instance.idTransport,
      'id_user': instance.idUser,
      'tracking_status': instance.trackingStatus,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
      'transport': instance.transport,
    };
