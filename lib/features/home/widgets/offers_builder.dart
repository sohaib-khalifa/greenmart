import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/home/data/dummy_data.dart';
import 'package:greenmart/features/home/widgets/item_card.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key, });

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
          height: 250,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 12),
            scrollDirection: Axis.horizontal,
            itemCount: offersList.length,
            itemBuilder: (context, index) {
              return ItemCard(productModel:  offersList[index] );
            },
          ),
        ),
      ],
    );
  }
}
