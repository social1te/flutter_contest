// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsListResponse _$ProductsListResponseFromJson(
        Map<String, dynamic> json) =>
    ProductsListResponse(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsListResponseToJson(
        ProductsListResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      categoryId: (json['category_id'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      imageName: json['image_name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
      'price': instance.price,
      'image_name': instance.imageName,
      'description': instance.description,
    };
