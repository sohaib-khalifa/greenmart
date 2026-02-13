import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/home/screens/item_card.dart';
import 'package:greenmart/features/home/screens/shop_screen.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text('Exclusive Offer', style: TextStyles.title),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text('See all', style: TextStyles.caption),
            ),
          ],
        ),
        SizedBox(
          height: 260,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 12),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return ItemCard();
            },
          ),
        ),
      ],
    );
  }
}
