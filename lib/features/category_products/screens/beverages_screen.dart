import 'package:flutter/material.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beverages'),
      ),
      body: Center(
        child: Text('Beverages Products will be displayed here.'),
      ),
    );
  }
}