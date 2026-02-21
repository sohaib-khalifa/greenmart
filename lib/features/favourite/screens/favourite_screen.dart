import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/favourite/widgets/favourite_item_tile.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favourite', style: TextStyles.subtitle),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return FavouriteItemTile();
        },
        separatorBuilder: (context, index) => const Divider(
          endIndent: 20,
          indent: 20,
          thickness: 1,
          color: AppColors.gainsboroColor,
        ),
      ),
    );
  }
}
