import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';



class FavouriteItemTile extends StatelessWidget {
  const FavouriteItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      leading: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfDeaMF3DGM6S4lWuPut2CMfBVLtNuPwBtxQ&s',
      ),
      title: Text(
        'Item',
        style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
      ),
    
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          'Description for item',
          style: TextStyles.small.copyWith(color: AppColors.greyColor),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '\$4.99',
            style: TextStyles.caption.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
