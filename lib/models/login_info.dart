
import 'package:flutter/cupertino.dart';

class LoginInfo{

  final String name;
  final String password;

  LoginInfo({
    @required this.name,
    @required this.password,
  });

  @override
  String toString() {
    return '$runtimeType($name, $password)';
  }
}