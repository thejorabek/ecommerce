import 'package:dio/dio.dart';
import 'package:ecommerce/models/jewelery_model.dart';
import 'package:ecommerce/pages/home_page.dart';

class GetJewelery {
  static Future<List<JeweleryModel>> getJewelery() async {
    Response res = await Dio().get(checkLimit());
    return (res.data as List).map((e) => JeweleryModel.fromJson(e)).toList();
  }
}

checkLimit() {
  switch (index) {
    case 0:
      return 'https://fakestoreapi.com/products/category/jewelery';
    case 3:
      return 'https://fakestoreapi.com/products/category/jewelery?limit=3';
    case 7:
      return 'https://fakestoreapi.com/products/category/jewelery?limit=7';
    case 10:
      return 'https://fakestoreapi.com/products/category/jewelery?limit=10';
    case 15:
      return 'https://fakestoreapi.com/products/category/jewelery?limit=15';
  }
}