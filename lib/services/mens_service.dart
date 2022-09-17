import 'package:dio/dio.dart';
import 'package:ecommerce/models/mens_model.dart';
import 'package:ecommerce/pages/home_page.dart';

class GetMensClothing {
  static Future<List<MensModel>> getData() async {
    Response res = await Dio().get(checkLimit());
    return (res.data as List).map((e) => MensModel.fromJson(e)).toList();
  }
}

checkLimit() {
  switch (index) {
    case 0:
      return 'https://fakestoreapi.com/products/category/men\'s clothing';
    case 3:
      return 'https://fakestoreapi.com/products/category/men\'s clothing?limit=3';
    case 7:
      return 'https://fakestoreapi.com/products/category/men\'s clothing?limit=7';
    case 10:
      return 'https://fakestoreapi.com/products/category/men\'s clothing?limit=10';
    case 15:
      return 'https://fakestoreapi.com/products/category/men\'s clothing?limit=15';
  }
}
