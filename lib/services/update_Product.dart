 import 'dart:js_interop';

import 'package:http/http.dart';


 import 'package:store_app/helper/Api.dart';
 import 'package:store_app/models/product_model.dart';

class UpdateProduct {
   Future <ProductModel> updateProduct (
       {required String title,
         required String price,
         required String desc ,
         required String category,
         required String image }) async   {
     Map< String, dynamic> data = await
     Api().put (url: 'https://fakestoreapi.com/products', body: {

       'title': title,
       'price': price,
       'description': desc ,
       'category': category,
       'image': image }
     );
     return ProductModel.fromJson(data);
   }
 }