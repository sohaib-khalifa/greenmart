import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custom_password_form_field.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
import 'package:greenmart/core/widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentGeometry.center,
                  child: SvgPicture.asset(AppImages.carrotSvg),
                ),
                SizedBox(height: 40),
                Text('Login', style: TextStyles.title),
                SizedBox(height: 16),
                Text(
                  'Enter your emails and password',
                  style: TextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Email',
                  style: TextStyles.caption.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 8),
                CustomTextFormField(hintText: 'example@gmail.com'),
                SizedBox(height: 18),
                Text(
                  'Password',
                  style: TextStyles.caption.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 8),

                CustomPasswordFormField(hintText: '*************'),
                SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.caption.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                PrimaryButton(onPressed: () {}, title: 'Log In'),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyles.caption.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {},
                      child: Text(
                        "Singup",
                        style: TextStyles.caption.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
