import 'package:flutter/material.dart';

class FrozenFoodsScreen extends StatelessWidget {
  const FrozenFoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Frozen Foods')),
      body: const Center(child: Text('This is the Frozen Foods screen')),
    );
  }
}
