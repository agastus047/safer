import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:safer/page2.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Image.asset(
          "animation/ss.png",
          width: 1000, // Adjust width as needed
          height: 1000, // Adjust height as needed
        ), 
      ),
      nextScreen: MyPage2(),
      duration: 3500,
      backgroundColor: Colors.white,
    );
  }
}
