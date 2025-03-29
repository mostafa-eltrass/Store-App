import 'dart:convert';

import 'package:http/http.dart' as http;
class AllCatgoriesService
{
Future<List <dynamic>>  getAllcatgory () async {
  
 http.Response response =  await  http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
      List<dynamic> data = jsonDecode(response.body);

      return data;
}
}