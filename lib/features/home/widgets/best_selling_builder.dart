import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/home/widgets/item_card.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text('Best Selling', style: TextStyles.title),
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
