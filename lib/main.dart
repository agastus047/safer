import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safer/login.dart';
import 'package:safer/signup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (BuildContext) => LoginPage(),
      'sign': (BuildContext) => SignUp(),
    },
  ));
}
