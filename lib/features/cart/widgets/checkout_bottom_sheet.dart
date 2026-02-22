import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/primary_button.dart';
import 'package:greenmart/features/cart/screens/order_accepted_screen.dart';
import 'package:greenmart/features/cart/widgets/checkout_row.dart';

class CheckoutBottomSheet extends StatelessWidget {
  final double totalPrice;

  const CheckoutBottomSheet({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Checkout', style: TextStyles.subtitle),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, size: 24),
              ),
            ],
          ),

          const SizedBox(height: 24),
          Divider(color: AppColors.gainsboroColor, thickness: 1),

          CheckoutRow(
            label: 'Delivery',
            trailing: Text(
              'Select Method',
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          const Divider(),
          CheckoutRow(
            label: 'Pament',
            trailing: Image.asset(AppImages.paymentIcon, width: 24),
            onTap: () {},
          ),
          const Divider(),
          CheckoutRow(
            label: 'Promo Code',
            trailing: Text(
              'Pick discount',
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),
          const Divider(),
          CheckoutRow(
            label: 'Total Cost',
            trailing: Text(
              '\$${totalPrice.toStringAsFixed(2)}',
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
            onTap: () {},
          ),

          Divider(color: AppColors.gainsboroColor, thickness: 1),
          const SizedBox(height: 16),

          RichText(
            text: TextSpan(
              style: TextStyles.small.copyWith(color: Colors.grey),

              children: const [
                TextSpan(text: 'By placing an order you agree to our\n'),
                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' And '),
                TextSpan(
                  text: 'Conditions',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          PrimaryButton(
            onPressed: () {
              Navigator.pop(context);
              pushTo(context, const OrderAcceptedScreen());
            },
            title: 'Place Order',
            height: 65,
            width: double.infinity,
            backgroundColor: AppColors.primaryColor,
            textStyle: TextStyles.subtitle.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
