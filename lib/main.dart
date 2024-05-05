import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safer/firebase_options.dart';
import 'package:safer/login.dart';
import 'package:safer/signup.dart';
import 'package:safer/form.dart';
import 'package:safer/page2.dart';
import 'package:safer/map_page.dart';
import 'package:safer/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash': (BuildContext) => SplashScreen(),
      'login': (BuildContext) => LoginPage(),
      'sign': (BuildContext) => SignUp(),
      'form': (BuildContext) => FormDemo(),
      'page2': (BuildContext) => MyPage2(),
      'map': (BuildContext) => MapPage(),
    },
  ));
}
