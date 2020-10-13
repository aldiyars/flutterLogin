

import 'package:first_flutter/models/user_info.dart';
import 'package:kinfolk/kinfolk.dart';

import 'login_info.dart';

class UserModel{
  UserInfo userInfo;

  Future<String> authUser(LoginInfo data) async {
    var client = await Kinfolk()
        .getToken(data.name.trim().toLowerCase(), data.password.trim().toLowerCase());
    if (client is String) {
      var text;
      switch (client) {

        default:
          text = client;
      }
      return text;
    } else {
      userInfo ??UserInfo(
          login: data.name.trim().toLowerCase(), password: data.password.trim().toLowerCase());
      return null;
    }
  }
}