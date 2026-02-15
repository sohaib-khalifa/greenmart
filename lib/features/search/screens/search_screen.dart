import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
import 'package:greenmart/features/home/widgets/item_card.dart';
import 'package:greenmart/features/search/data/dummy_data.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.only(
          top: 26,
          left: 16,
          right: 16,
          bottom: 10,
        ),
        child: GridView.builder(
          itemCount: mockSearchDrinksProductsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) =>
              ItemCard(productModel: mockSearchDrinksProductsList[index]),
        ),
      ),
    );
  }
}
