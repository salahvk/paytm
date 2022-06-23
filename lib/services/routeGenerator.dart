import 'package:flutter/material.dart';
import 'package:paytm_advanced/screens/home/home.dart';
import 'package:paytm_advanced/screens/splashScreen.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case 'Home':
        return MaterialPageRoute(builder: (context) => const Home());
    }
    return MaterialPageRoute(builder: (context) => const SplashScreen());
  }
}