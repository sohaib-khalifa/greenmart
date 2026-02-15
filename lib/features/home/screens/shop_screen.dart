import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
import 'package:greenmart/features/home/widgets/all_products_builder.dart';
import 'package:greenmart/features/home/widgets/best_selling_builder.dart';
import 'package:greenmart/features/home/widgets/offers_builder.dart';
import 'package:greenmart/features/search/search_screen.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomSvgPicture(
          path: AppImages.logoSvg,
          color: AppColors.primaryColor,
          height: 42,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Hero(
                tag: 'search',
                child: Material(
                  color: Colors.transparent,
                  child: CustomTextFormField(
                    onTapOfGestureDetector: () {
                      pushTo(context, SearchScreen());
                    },
                    // onTap: () {
                    // onTapOfCustomTextFormField not do ===> because exist enabled => false
                    //   pushTo(context, SearchScreen());
                    // },
                    enabled: false,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Store',
                  ),
                ),
              ),

              // SizedBox(height: 22),
              OffersBuilder(),
              BestSellingBuilder(),
              AllProductsBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
