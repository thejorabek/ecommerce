import 'package:dio/dio.dart';
import 'package:ecommerce/models/user_model.dart';
import 'package:ecommerce/pages/user_page.dart';

class UserService {
  static Future<List<UserModel>> getData() async {
    Response res = await Dio().get(checkLimit());
    return (res.data as List).map((e) => UserModel.fromJson(e)).toList();
  }
}

checkLimit() {
  switch (userIndex) {
    case 0:
      return 'https://fakestoreapi.com/users';
    case 4:
      return 'https://fakestoreapi.com/users?limit=4';
    case 7:
      return 'https://fakestoreapi.com/users?limit=7';
    case 10:
      return 'https://fakestoreapi.com/users?limit=10';
  }
}
