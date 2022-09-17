import 'package:dio/dio.dart';
import 'package:ecommerce/models/electronics_model.dart';
import 'package:ecommerce/pages/home_page.dart';

class GetElectronics {
  static Future<List<Electronics>> getElectronics() async {
    Response res = await Dio().get(checkLimit());
    return (res.data as List).map((e) => Electronics.fromJson(e)).toList();
  }
}

checkLimit() {
  switch (index) {
    case 0:
      return 'https://fakestoreapi.com/products/category/electronics';
    case 3:
      return 'https://fakestoreapi.com/products/category/electronics?limit=3';
    case 7:
      return 'https://fakestoreapi.com/products/category/electronics?limit=7';
    case 10:
      return 'https://fakestoreapi.com/products/category/electronics?limit=10';
    case 15:
      return 'https://fakestoreapi.com/products/category/electronics?limit=15';
  }
}