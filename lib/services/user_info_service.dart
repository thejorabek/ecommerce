import 'package:dio/dio.dart';
import 'package:ecommerce/models/user_info_model.dart';
import 'package:ecommerce/pages/user_page.dart';

class UserInfoService {
  static Future<List<UserInfoModel>> getData() async {
    Response res = await Dio().get(checkLimit());
    return (res.data as List).map((e) => UserInfoModel.fromJson(e)).toList();
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
