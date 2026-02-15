import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.validator,
    this.keyboardType,
    this.enabled = true,
    this.onTapOfTextFormField,
    this.onTapOfGestureDetector,
  });
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? enabled;
  final void Function()? onTapOfTextFormField;
  final void Function()? onTapOfGestureDetector;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapOfGestureDetector,
      child: AbsorbPointer(
        absorbing: !(enabled ?? true),
        child: TextFormField(
          enabled: enabled,
          keyboardType: keyboardType ?? TextInputType.text,

          validator: validator,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle:
                hintStyle ??
                TextStyles.caption.copyWith(color: AppColors.blackNormalColor),
            hintText: hintText,
          ),
          onTap: onTapOfTextFormField,
        ),
      ),
    );
  }
}
