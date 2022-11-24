import 'package:flutter/material.dart';
import 'package:mod3_kel33/screens/profile.dart';
import 'screens/nav.dart';
import 'screens/detail.dart';
import 'screens/home.dart';
import 'screens/splashscreen.dart';
import 'screens/location.dart';

void main() async {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Report',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/nav': (context) => const Navigation(),
        '/home': (context) => HomePage(),
        '/location': (context) => LocationPage(),
        '/detail': (context) => const DetailPage(item: '', title: ''),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
