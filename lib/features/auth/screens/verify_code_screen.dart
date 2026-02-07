import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/primary_button.dart';
import 'package:pinput/pinput.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

final GlobalKey<FormState> formKey = GlobalKey();
String validPin = '12345';
// final pinController = TextEditingController();

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
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
                  Text('Enter verification code', style: TextStyles.title),
                  SizedBox(height: 16),
                  Text(
                    'We have sent SMS to: 01XXXXXXXXXX',
                    style: TextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 32),
                  Pinput(
                    // controller: pinController,
                    errorBuilder: (errorText, pin) {
                      return Padding(
                        padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                        child: Center(
                          child: Text(
                            errorText!,
                            style: TextStyles.caption.copyWith(
                              color: AppColors.redColor,
                            ),
                          ),
                        ),
                      );
                    },

                    // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    length: 5,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }

                      if (value != validPin) {
                        return 'Pin is incorrect';
                      }

                      return null;
                    },

                    /////////////////////////
                    // onCompleted: (value) {
                    //   print("Code: $value");
                    // },
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                        onPressed: () {},
                        child: Text(
                          'Resend OTP',
                          style: TextStyles.caption.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.tangoNormalColor,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),

                        onPressed: () {
                          popFrom(context);
                        },
                        child: Text(
                          'Change Phone Number',
                          style: TextStyles.caption.copyWith(
                            color: AppColors.blackNormalColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  PrimaryButton(
                    height: 70,
                    onPressed: () {
                      // if (formKey.currentState!.validate()) {
                      //   // push to home
                      // }
                      /////////////
                      // final pin = pinController.text;

                      // if (pin.isEmpty) {
                      //   print("required");
                      //   return;
                      // }

                      // if (pin != validPin) {
                      //   print("incorrect");
                      //   return;
                      // }

                      // ✅ صح → روح للصفحة التالية
                      // pushTo(context, HomeScreen());
                    },
                    title: 'Confirm',
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
