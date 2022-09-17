import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:ecommerce/models/cart_model.dart';
import 'package:ecommerce/pages/home_page.dart';

class AddProduct {
  static Future addData() async {
    var params = {
      "title": "$titleCon.text",
      "price": "$priceCon.text",
      "description": "$descCon.text",
      "image": "$imageCon.text",
      "category": "$categCon.text",
    };
    Response res = await Dio().post(
      'https://fakestoreapi.com/products',
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
      data: jsonEncode(params),
    );
    print(res.data);
    return (res.data as List).map((e) => CartModel.fromJson(e)).toList();
  }
}
