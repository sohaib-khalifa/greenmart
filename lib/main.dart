import 'package:flutter/material.dart';
import 'package:greenmart/features/intro/screens/splash_screen.dart';

void main() {
  runApp(const GreenMart());
}

class GreenMart extends StatelessWidget {
  const GreenMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
