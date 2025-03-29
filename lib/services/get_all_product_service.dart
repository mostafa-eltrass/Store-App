
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/product_model.dart';

class  AllProductService {

 Future<List<productModel>>  getAllProduct() async{
   List<dynamic> data=  await Api().get(url :'https://fakestoreapi.com/products') ;
 List<productModel> productList = [];
 for( int i =0;i <  data.length;i++){
   productList.add(productModel.fromJson(data[i]));
 }
 return productList;
 }
  }
