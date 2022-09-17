import 'package:dio/dio.dart';
import 'package:ecommerce/models/ecommerce_model.dart';
import 'package:ecommerce/pages/home_page.dart';

class GetAllProducts {
  static Future<List<EcommerceModel>> getData() async {
    Response res = await Dio().get(checkLimit());
    return (res.data as List).map((e) => EcommerceModel.fromJson(e)).toList();
  }
}

checkLimit() {
  switch (index) {
    case 0:
      return 'https://fakestoreapi.com/products';
    case 3:
      return 'https://fakestoreapi.com/products?limit=3';
    case 7:
      return 'https://fakestoreapi.com/products?limit=7';
    case 10:
      return 'https://fakestoreapi.com/products?limit=10';
    case 15:
      return 'https://fakestoreapi.com/products?limit=15';
  }
}
