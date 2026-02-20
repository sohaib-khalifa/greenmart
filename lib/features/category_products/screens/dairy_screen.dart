import 'package:flutter/material.dart';

class DairyScreen extends StatelessWidget {
  const DairyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dairy'),
      ),
      body: Center(
        child: Text('Dairy Products will be displayed here.'),
      ),
    );
  }
}