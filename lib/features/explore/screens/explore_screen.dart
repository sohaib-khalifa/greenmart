import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Find Products', style: TextStyles.subtitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              CustomTextFormField(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Store',
              ),
              GridView.builder(
                itemCount: 8,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 180,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 18,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blackColor.withValues(alpha: 0.07),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),

                      border: Border.all(color: AppColors.accentColor),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: Image.asset('assets/images/image.png')),

                        Text(
                          textAlign: TextAlign.center,
                          'Frash Fruits & Vegetable',
                          style: TextStyles.caption.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
