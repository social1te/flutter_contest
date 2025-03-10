// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      id: (json['id'] as num).toInt(),
      phone: json['phone'] as String,
      address: json['address'] as String,
      avatarName: json['avatar_name'] as String,
      barCode: json['bar_code'] as String,
      fcmToken: json['fcm_token'] as String,
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'address': instance.address,
      'avatar_name': instance.avatarName,
      'bar_code': instance.barCode,
      'fcm_token': instance.fcmToken,
    };
