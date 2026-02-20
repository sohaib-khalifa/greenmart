import 'package:flutter/material.dart';

class BakeryScreen extends StatelessWidget {
  const BakeryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bakery'),
      ),
      body: Center(
        child: Text('Bakery Products will be displayed here.'),
      ),
    );
  }
}