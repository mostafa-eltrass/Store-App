import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class CatgoriesService {

  Future<List<productModel>>  getCatgoriesProducts (
      {required String catogoryName} ) async{
     http.Response response = await  http.get(Uri.parse('https://fakestoreapi.com/products/category/$catogoryName'));
    List<productModel> data = jsonDecode(response.body);

    List<productModel> catgoriesList = [];
    for ( int i =0; i< data.length ; i++){
      catgoriesList.add(data[i]);
    }
    return catgoriesList;
  }
}