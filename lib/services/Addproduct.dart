 import 'package:http/http.dart';
import 'package:store_app/helper/Api.dart';
 import 'package:store_app/models/product_model.dart';
 import 'package:http/http.dart' as http  ;

class Addproduct {
  Api api = Api();
  Future <ProductModel> addproduct(
      {required String title,
        required String price,
    required String desc ,
        required String category,
        required String image }) async   {
    Map< String, dynamic> data = await
    Api().post( url: 'https://fakestoreapi.com/products',body: {
      'title': title,
      'price': price,
      'description': desc ,
      'category': category,
      'image': image });
    return ProductModel.fromJson(data);
  }
}
