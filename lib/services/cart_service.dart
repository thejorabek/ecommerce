import 'package:dio/dio.dart';
import 'package:ecommerce/models/cart_model.dart';
import 'package:ecommerce/pages/home_page.dart';

class GetCart {
  static Future<List<CartModel>> getData() async {
    Response res = await Dio().get(checkLimit());
    return (res.data as List).map((e) => CartModel.fromJson(e)).toList();
  }
}

checkLimit() {
  switch (index) {
    case 0:
      return 'https://fakestoreapi.com/carts';
    case 3:
      return 'https://fakestoreapi.com/carts?limit=3';
    case 7:
      return 'https://fakestoreapi.com/carts?limit=7';
    case 10:
      return 'https://fakestoreapi.com/carts?limit=10';
    case 15:
      return 'https://fakestoreapi.com/carts?limit=15';
  }
}