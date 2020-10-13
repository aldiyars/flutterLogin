import 'package:first_flutter/models/opportunity.dart';
import 'package:first_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:kinfolk/kinfolk.dart';
import 'package:kinfolk/model/cuba_entity_filter.dart';
import 'package:kinfolk/model/url_types.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

void main() async {
//  print(value);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}