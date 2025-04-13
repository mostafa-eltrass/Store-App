
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:store_app/helper/Api.dart';
class AllCatgoriesService
{
Future<List <dynamic>>  getAllcatgory () async {

  List<dynamic> data = await  Api().get(url:'https://fakestoreapi.com/products/categories',);


         return data;
       }
}
