// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) => CartResponse(
      id: (json['id'] as num).toInt(),
      profileId: (json['profile_id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      productCount: (json['product_count'] as num).toInt(),
      idCreditCardType: (json['id_credit_card_type'] as num).toInt(),
      idColor: (json['id_color'] as num).toInt(),
      idSize: (json['id_size'] as num).toInt(),
    );

Map<String, dynamic> _$CartResponseToJson(CartResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_id': instance.profileId,
      'product_id': instance.productId,
      'product_count': instance.productCount,
      'id_credit_card_type': instance.idCreditCardType,
      'id_color': instance.idColor,
      'id_size': instance.idSize,
    };
