import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/Api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    try {
      List<dynamic>? data = await Api().get(url: 'https://fakestoreapi.com/products');

      if (data == null) {
        // ممكن ترجع [] أو ترمي استثناء حسب ما تفضلي
        return [];
        // أو: throw Exception('البيانات المستلمة غير صالحة');
      }

      List<ProductModel> productList = data.map((item) => ProductModel.fromJson(item)).toList();
      return productList;
    } catch (e) {
      print('حدث خطأ أثناء جلب المنتجات: $e');
      throw Exception('فشل تحميل المنتجات');
    }
  }
}