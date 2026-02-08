import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
import 'package:greenmart/core/widgets/primary_button.dart';
import 'package:greenmart/features/auth/screens/verify_code_screen.dart';

class VerifyMobileScreen extends StatefulWidget {
  const VerifyMobileScreen({super.key});

  @override
  State<VerifyMobileScreen> createState() => _VerifyMobileScreenState();
}

final GlobalKey<FormState> formKey = GlobalKey();

class _VerifyMobileScreenState extends State<VerifyMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            popFrom(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Align(
        alignment: AlignmentGeometry.topCenter,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ).copyWith(top: 90),

            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUnfocus,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter your mobile number', style: TextStyles.title),
                  SizedBox(height: 16),
                  Text(
                    'We need to verify you. We will send you a one time verification code. ',
                    style: TextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 45),

                  CustomTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      return null;
                    },
                    hintText: '01xxxxxxxxxx',
                    keyboardType: TextInputType.phone,
                  ),

                  SizedBox(height: 45),

                  // SizedBox(height: 28),
                  PrimaryButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushTo(context, VerifyCodeScreen());
                      }
                    },
                    title: 'Next',
                  ),
                  SizedBox(height: 14),
                  Center(
                    child: TextButton(
                      // style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {},
                      child: Text(
                        
                        'Resend confirmation code (1:23)',
                        style: TextStyles.body.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
