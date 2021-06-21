// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_tracking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportTrackingData _$TransportTrackingDataFromJson(
    Map<String, dynamic> json) {
  return TransportTrackingData()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..transportCode = json['transport_code'] as String
    ..licenseNumber = json['license_number'] as String;
}

Map<String, dynamic> _$TransportTrackingDataToJson(
        TransportTrackingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transport_code': instance.transportCode,
      'license_number': instance.licenseNumber,
    };
