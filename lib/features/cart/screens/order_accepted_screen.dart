import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';
import 'package:greenmart/core/widgets/primary_button.dart';
import 'package:greenmart/features/main/main_app_screen.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),

            CustomSvgPicture(path: AppImages.orderAcceptedSvg, height: 250),

            const Spacer(),

            Text(
              'Your Order has been accepted',
              textAlign: TextAlign.center,
              style: TextStyles.subtitle.copyWith(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Your items has been placed and is on\nit\'s way to being processed',
              textAlign: TextAlign.center,
              style: TextStyles.body.copyWith(color: AppColors.greyColor),
            ),
            const SizedBox(height: 40),

            PrimaryButton(
              onPressed: () =>
                  pushAndRemoveUntilAll(context, const MainAppScreen()),

              title: 'Go To Home',
              height: 65,
              width: double.infinity,
              backgroundColor: AppColors.primaryColor,
              textStyle: TextStyles.subtitle.copyWith(color: Colors.white),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
