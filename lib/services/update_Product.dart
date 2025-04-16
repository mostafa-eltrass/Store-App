import 'dart:convert';
import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required String price,  // نستقبلها كـ String لأن الـ UI سيرسلها كـ String
    required String desc,
    required String category,
    required String image,
  }) async {
      Map<String, dynamic> data = await Api().put(
        url: 'https://fakestoreapi.com/products/$id',
        body: {
          'title': title,
          'price': price,
          'description': desc,
          'category': category,
          'image': image,
        },
      );


      print('Response data: $data');

      return ProductModel.fromJson(data);
    }
    }

