import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
import 'package:greenmart/features/home/widgets/item_card.dart';
import 'package:greenmart/features/search/data/dummy_data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String query = '';
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

          child: CustomTextFormField(
            onChanged: (value) {
              setState(() {
                query = value;
              });
            },
            enabled: true,
            prefixIcon: Icon(Icons.search),
            hintText: 'Search Store',
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
          // itemCount: mockSearchDrinksProductsList.length,
                    itemCount: getproductsBySearchQuery(query).length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) =>
              // ItemCard(productModel: mockSearchDrinksProductsList[index]),
              ItemCard(productModel: getproductsBySearchQuery(query)[index]),
        ),
      ),
    );
  }
}
