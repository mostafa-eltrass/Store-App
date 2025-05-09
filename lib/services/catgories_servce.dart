import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/product_model.dart';

class CatgoriesService {

  Future<List<ProductModel>>  getCatgoriesProducts (
      {required String catogoryName} ) async{
    List<dynamic> data  = await  Api().get(url: 'https://fakestoreapi.com/products/category/$catogoryName');
    List<ProductModel> catgoriesList = [];
    for ( int i =0; i< data.length ; i++){
      catgoriesList.add(data[i]);
    }
    return catgoriesList;
  }
  }
