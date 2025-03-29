
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class  AllProductService {
 Future<List<productModel>>  getAllProduct() async{
    http.Response response= await  http.get(Uri.parse('https://fakestoreapi.com/products'));
   List<dynamic> data  = jsonDecode( response.body);

 List<productModel> productList = [];
 for( int i =0;i <  data.length;i++){
   productList.add(productModel.fromJson(data[i]));
 }
 return productList;
 }

}