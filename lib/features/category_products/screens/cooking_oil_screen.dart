import 'package:flutter/material.dart';

class CookingOilScreen extends StatelessWidget {
  const CookingOilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cooking Oil'),
      ),
      body: Center(
        child: Text('Cooking Oil Products will be displayed here.'),
      ),
    );
  }
}