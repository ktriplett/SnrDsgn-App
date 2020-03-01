
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:senior_design/screens/login_screen/login_screen.dart';


class LoginState extends ChangeNotifier {
  String user = "";
  String pass = "";
  var succ = false;
  List<String> users = List();
  List<String> passs = List();

  TextEditingController userController = new TextEditingController();
  TextEditingController passController = new TextEditingController();

  bool verify() {
    print(userController.text);
    print(passController.text);
  }
}