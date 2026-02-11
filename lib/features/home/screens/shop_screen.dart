import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';

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
    );
  }
}
