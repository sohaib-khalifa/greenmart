import 'package:flutter/material.dart';
import 'package:greenmart/core/functions/navigation.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custom_text_form_field.dart';
import 'package:greenmart/features/explore/data/dummy_data.dart';
import 'package:greenmart/features/explore/widgets/item_card_explore.dart';

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
                itemCount: exploreCategories.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 180,
                ),
                itemBuilder: (context, index) {
                  return ItemCardExplore(
                    onTap: (){
                      pushTo(context, exploreCategories[index].destination );
                    },
                    exploreCategoryModel: exploreCategories[index],
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
