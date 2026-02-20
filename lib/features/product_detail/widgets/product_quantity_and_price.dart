import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/features/home/data/product_model.dart';

class ProductQuantityAndPrice extends StatelessWidget {
  final ProductModel productModel; 
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ProductQuantityAndPrice({
    super.key,
    required this.productModel,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // زرار الناقص
        _buildCounterButton(Icons.remove, onDecrement, right: 10),

        // مربع العدد
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.gainsboroColor),
          ),
          width: 45,
          height: 45,
          alignment: Alignment.center,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "$count",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        // زرار الزائد
        _buildCounterButton(
          Icons.add,
          onIncrement,
          left: 10,
          color: AppColors.primaryColor,
        ),

        const Spacer(),

        // السعر الإجمالي (بيتحسب من الموديل مباشرة)
        Text(
          '\$${(productModel.price * count).toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // دالة زرار العداد (خاصة بالودجت دي)
  Widget _buildCounterButton(
    IconData icon,
    VoidCallback onTap, {
    double right = 0,
    double left = 0,
    Color color = Colors.grey,
  }) {
    return Padding(
      padding: EdgeInsets.only(right: right, left: left),
      child: IconButton(
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onTap,
        constraints: const BoxConstraints(),
        padding: EdgeInsets.zero,

        icon: Icon(icon, color: color, size: 30),
      ),
    );
  }
}
