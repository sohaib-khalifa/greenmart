import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/features/intro/screens/splash_screen.dart';

void main() {
  runApp(const GreenMart());
}

class GreenMart extends StatelessWidget {
  const GreenMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
      builder: (context, child) {
        return SafeArea(top: false, bottom: true, child: child!);
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
