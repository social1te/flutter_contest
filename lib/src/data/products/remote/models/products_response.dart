import 'package:json_annotation/json_annotation.dart';

part 'products_response.g.dart';

@JsonSerializable()
class ProductsListResponse{
  const ProductsListResponse({
    required this.products,
});

  factory ProductsListResponse.fromJson(Map<String, dynamic> json) => _$ProductsListResponseFromJson(json);

  final List<ProductResponse> products;
}


@JsonSerializable()
class ProductResponse{
  const ProductResponse({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.price,
    required this.imageName,
    required this.description,
});

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'category_id')
  final int categoryId;

  @JsonKey(name: 'price')
  final double price;

  @JsonKey(name: 'image_name')
  final String imageName;

  @JsonKey(name: 'description')
  final String description;
}