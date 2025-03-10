import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:untitled3/src/data/products/remote/models/products_response.dart';

part 'products_data_source.g.dart';

@RestApi()
abstract class ProductsDataSource{
  factory ProductsDataSource(Dio dio, String baseUrl) => _ProductsDataSource;

  @GET('https://zylvruucteggdyofdecm.supabase.co/rest/v1/products/')
  Future<ProductResponse> getProducts({
    @Query('products') required String query
});
}
