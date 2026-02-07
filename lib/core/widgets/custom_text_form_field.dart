import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintStyle: TextStyles.caption.copyWith(
          color: AppColors.blackNormalColor,
        ),
        hintText: 'example@gmail.com',

      ),
    );
  }
}
