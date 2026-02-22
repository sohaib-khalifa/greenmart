import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/primary_button.dart';
import 'package:greenmart/features/cart/data/cart_item_model.dart';
import 'package:greenmart/features/cart/data/dummy_data.dart';
import 'package:greenmart/features/cart/widgets/cart_item_tile.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  final List<CartItemModel> _cartItems = mockCartItems;

  double get _totalPrice => _cartItems.fold(
    0,
    (sum, item) => sum + item.productModel.price * item.count,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Cart', style: TextStyles.subtitle),
      ),
      body: _cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty'))
          : ListView.separated(
              itemCount: _cartItems.length,
              separatorBuilder: (context, index) => const Divider(
                color: AppColors.gainsboroColor,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              itemBuilder: (context, index) => CartItemTile(
                cartItem: _cartItems[index],
                onIncrement: () => setState(() => _cartItems[index].count++),
                onDecrement: () => setState(() {
                  if (_cartItems[index].count > 1) _cartItems[index].count--;
                }),
                onRemove: () => setState(() => _cartItems.removeAt(index)),
              ),
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: PrimaryButton(
          onPressed: () {},
          title: 'Go to Checkout   \$${_totalPrice.toStringAsFixed(2)}',
          height: 65,
          width: double.infinity,
          backgroundColor: AppColors.primaryColor,
          textStyle: TextStyles.subtitle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
