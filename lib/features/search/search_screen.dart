import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 12),

          child: Hero(
            tag: 'search',
            child: Material(
              color: Colors.transparent,
              child: CustomTextFormField(
                enabled: true,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Store',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
