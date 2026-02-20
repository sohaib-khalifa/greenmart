import 'package:flutter/material.dart';

class MeatScreen extends StatelessWidget {
  const MeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meat'),
      ),
      body: Center(
        child: Text('Meat Products will be displayed here.'),
      ),
    );
  }
}