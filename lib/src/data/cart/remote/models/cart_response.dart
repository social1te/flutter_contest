import 'package:json_annotation/json_annotation.dart';

part 'cart_response.g.dart';

@JsonSerializable()
class CartResponse {
  const CartResponse({
    required this.id,
    required this.profileId,
    required this.productId,
    required this.productCount,
    required this.idCreditCardType,
    required this.idColor,
    required this.idSize,
  });

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'profile_id')
  final int profileId;

  @JsonKey(name: 'product_id')
  final int productId;

  @JsonKey(name: 'product_count')
  final int productCount;

  @JsonKey(name: 'id_credit_card_type')
  final int idCreditCardType;

  @JsonKey(name: 'id_color')
  final int idColor;

  @JsonKey(name: 'id_size')
  final int idSize;
}