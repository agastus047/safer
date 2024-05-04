import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safer/page2.dart';
import 'package:safer/splash.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {'splash': (BuildContext) => SplashScreen(),
      'page2': (BuildContext) => MyPage2(),
    },
  )
  );
}
