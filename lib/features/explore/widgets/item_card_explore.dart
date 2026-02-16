import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/features/explore/data/explore_category_model.dart';

class ItemCardExplore extends StatelessWidget {
  const ItemCardExplore({super.key, required this.exploreCategoryModel});
  final ExploreCategoryModel exploreCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      decoration: BoxDecoration(
        // color: AppColors.backgroundColor,
        color: exploreCategoryModel.bgColor,

        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.07),
            blurRadius: 10,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(16),

        border: Border.all(color: exploreCategoryModel.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image.network(exploreCategoryModel.imagePath)),

          Text(
            textAlign: TextAlign.center,
            // 'Frash Fruits & Vegetable',
            exploreCategoryModel.title,
            style: TextStyles.caption.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
