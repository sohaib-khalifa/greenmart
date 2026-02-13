import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.07),
            blurRadius: 10,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
    
        border: Border.all(color: AppColors.accentColor),
      ),
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset('assets/images/banana.png'),
            ),
          ),
          SizedBox(height: 16),
    
          Text(
            'Bananas',
            style: TextStyles.body.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '7pcs',
            style: TextStyles.small.copyWith(
              color: AppColors.greyColor,
            ),
          ),
          SizedBox(height: 8),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$4.99',
                style: TextStyles.body.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              FloatingActionButton.small(
                elevation: 0,
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.whiteColor,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
