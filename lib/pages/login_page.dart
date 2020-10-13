import 'dart:io';

import 'package:first_flutter/models/opportunity.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:kinfolk/kinfolk.dart';
import 'package:kinfolk/model/cuba_entity_filter.dart';
import 'package:kinfolk/model/url_types.dart';
import 'package:oauth2/oauth2.dart' as oauth2;

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4376FB),
        elevation: 0,
        title: Text(
          "Войти",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: _isLoading
            ? Center(
                child: GFLoader(
                  size: 40,
                  type:
                      Platform.isIOS ? GFLoaderType.ios : GFLoaderType.android,
                  // androidLoaderColor: Animation<Color>(Colors.blue),
                ),
              )
            : ListView(
                children: [
//            headerSection(),
                  textSection(),
                  buttonSection()
                ],
              ),
      ),
    );
  }

  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  Future<String> authClient(String login, String pass) async {
    /// initialize service
    Kinfolk kinfolk = Kinfolk();
    kinfolk.initializeBaseVariables(
        "http://dev.uco.kz:8009/crm", "client", "secret");
    oauth2.Client client = await kinfolk.getToken(login, pass);

    var filter = CubaEntityFilter(
        view: "opportunity.mobile",
        filter: Filter(conditions: [
          FilterCondition(
            property: "name",
            conditionOperator: Operators.notEquals,
            value: "null",
          )
        ]));

    var value = await Kinfolk.getListModelRest(
        serviceOrEntityName: 'crm\$Opportunity',
        filter: filter,
        methodName: 'search',
        type: Types.entities,
        fromMap: (val) => val);

    if (client is String) {
      var text;
      switch (client) {
        default:
          text = client;
      }
      return text;
    }
    return null;
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
//      color: Color(0xFF4376FB),
      margin: EdgeInsets.all(15.0),
      child: RaisedButton(
        color: Color(0xFF4376FB),
        onPressed: () {
          setState(() {
            _isLoading = false;
          });
          var res =
              authClient(usernameController.text, passwordController.text);
//          print(res.toString());
          if (res == null) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()),
                (Route<dynamic> route) => false);
          }
        },
        elevation: 1,
        child: Text(
          "Войти",
          style: TextStyle(color: Colors.white),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

  Container textSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      child: Column(
        children: [
          TextFormField(
            controller: usernameController,
            decoration: InputDecoration(
              hintText: "Логин",
              hintStyle: TextStyle(fontWeight: FontWeight.w500),
              border: InputBorder.none,
            ),
          ),
          Divider(
            height: 9,
            thickness: 1,
            color: Color(0xffedf2ff),
          ),
          TextFormField(
            controller: passwordController,
//              cursorColor: mainColor,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Пароль",
              hintStyle: TextStyle(fontWeight: FontWeight.w500),
              border: InputBorder.none,
            ),
          )
        ],
      ),
    );
  }
}
