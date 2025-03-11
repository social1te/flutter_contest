import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:untitled3/src/data/products/remote/models/products_response.dart';

part 'products_data_source.g.dart';

@RestApi(baseUrl: 'https://zylvruucteggdyofdecm.supabase.co')
abstract class ProductsDataSource{
  factory ProductsDataSource(Dio dio) = _ProductsDataSource;

  @GET('/rest/v1/products/')
  Future <List<ProductResponse>> getProducts({
    @Header('apiKey') required String apiKey
});

}
