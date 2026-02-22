import 'package:greenmart/features/home/data/product_model.dart';

class CartItemModel {
  final ProductModel productModel;
  int count;

  CartItemModel({required this.productModel, this.count = 1});
}
