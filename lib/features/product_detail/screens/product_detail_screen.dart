import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/primary_button.dart';
import 'package:greenmart/features/home/data/product_model.dart';
import 'package:greenmart/features/product_detail/widgets/product_quantity_and_price.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductModel productModel;

  const ProductDetailScreen({super.key, required this.productModel});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F3F2),
        elevation: 0,
        leading: IconButton(
          onPressed: () => popFrom(context),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ios_share, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F2),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Image.network(
                widget.productModel.image,
                fit: BoxFit.contain,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      widget.productModel.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        widget.productModel.quantityForPrice.toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Row(
                  //   children: [
                  //     _buildCounterButton(Icons.remove, right: 10, () {
                  //       if (count > 1) setState(() => count--);
                  //     }),
                  //     Container(
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(16),
                  //         border: Border.all(color: AppColors.gainsboroColor),
                  //       ),
                  //       width: 45,
                  //       height: 45,
                  //       alignment: Alignment.center,
                  //       child: FittedBox(
                  //         fit: BoxFit.scaleDown,
                  //         child: Text(
                  //           "$count",
                  //           style: const TextStyle(
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     _buildCounterButton(Icons.add, left: 10, () {
                  //       setState(() => count++);
                  //     }, color: AppColors.primaryColor),
                  //     const Spacer(),
                  //     Text(
                  //       '\$${(widget.productModel.price * count).toStringAsFixed(2)}',
                  //       style: const TextStyle(
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  ProductQuantityAndPrice(
                    productModel: widget.productModel,
                    count: count,
                    onDecrement: () {
                      if (count > 1) setState(() => count--);
                    },
                    onIncrement: () {
                      setState(() => count++);
                    },
                  ),
                  SizedBox(height: 12),
                  const Divider(height: 40),

                  _buildExpandableSection(
                    "Product Detail",
                    widget.productModel.description,
                  ),

                  const Divider(height: 40),

                  // Nutritions Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Nutritions",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              "100gr",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: const Icon(Icons.keyboard_arrow_right),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Divider(height: 40),

                  // Review Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Review",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children:
                            List.generate(
                              5,
                              (index) => const Icon(
                                Icons.star,
                                color: Color(0xFFF3603F),
                                size: 20,
                              ),
                            )..add(
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: const Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: PrimaryButton(
          onPressed: () {},
          title: 'Add To Cart',
          height: 65,
          width: double.infinity,
          backgroundColor: AppColors.primaryColor,
          textStyle: TextStyles.subtitle.copyWith(
            color: AppColors.backgroundColor,
          ),
        ),
      ),
    );
  }

  Widget _buildExpandableSection(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(color: Colors.grey, height: 1.5),
        ),
      ],
    );
  }
}
