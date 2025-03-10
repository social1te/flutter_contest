import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  const ProfileResponse({
    required this.id,
    required this.phone,
    required this.address,
    required this.avatarName,
    required this.barCode,
    required this.fcmToken,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'address')
  final String address;

  @JsonKey(name: 'avatar_name')
  final String avatarName;

  @JsonKey(name: 'bar_code')
  final String barCode;

  @JsonKey(name: 'fcm_token')
  final String fcmToken;
}
