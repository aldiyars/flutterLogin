import 'package:first_flutter/models/user_info.dart' as ui;
import 'package:flutter/material.dart';
import 'package:kinfolk/kinfolk.dart';
import 'package:oauth2/oauth2.dart' as oauth2;


class RestService{

  static Future<ui.UserInfo> getUserInfo() async {
    oauth2.Client info = await Kinfolk.getClient();
    var url = 'http://dev.uco.kz:8009/crm/rest/v2/userInfo';
    var response = (await info.get(url));
    var body = response.body;
    if (body == null || body.isEmpty) {
      return null;
    }
    var user = ui.userInfoFromJson(body);
    return user;
  }

}