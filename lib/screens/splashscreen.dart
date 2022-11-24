import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mod3_kel33/screens/nav.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/corona.jpeg',
      ),
      nextScreen: Navigation(),
      splashTransition: SplashTransition.decoratedBoxTransition,
      backgroundColor: Colors.grey,
      duration: 3000,
    );
  }
}
