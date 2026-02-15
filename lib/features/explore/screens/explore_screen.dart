import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Find Products', style: TextStyles.subtitle),
      ),
    );
  }
}
