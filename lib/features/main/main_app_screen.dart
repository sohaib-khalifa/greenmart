import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';
import 'package:greenmart/features/account/screens/account_screen.dart';
import 'package:greenmart/features/cart/screens/my_cart_screen.dart';
import 'package:greenmart/features/explore/screens/explore_screen.dart';
import 'package:greenmart/features/favourite/screens/favourite_screen.dart';
import 'package:greenmart/features/home/screens/shop_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});
  
  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

int currentIndex = 0;
List<Widget> screens = [
  ShopScreen(),
  ExploreScreen(),
  MyCartScreen(),
  FavouriteScreen(),
  AccountScreen(),
];

class _MainAppScreenState extends State<MainAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.storeSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.storeSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.exploreSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.exploreSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Explore',
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.cartSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.cartSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.heartSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.heartSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.userSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.userSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Account',
          ),
        ],
      ),
    );
  }
}
