import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safer/login.dart';
import 'package:safer/signup.dart';
import 'package:safer/form.dart';
import 'package:safer/page2.dart';
import 'package:safer/map_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'map',
    routes: {
      'login': (BuildContext) => LoginPage(),
      'sign': (BuildContext) => SignUp(),
      'form': (BuildContext) => FormDemo(),
      'page2': (BuildContext) => MyPage2(),
      'map': (BuildContext) => MapPage(),
    },
  ));
}
