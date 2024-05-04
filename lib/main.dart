import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safer/page2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'page2',
    routes: {
      'page2': (BuildContext) => MyPage2(),
    },
  ));
}
