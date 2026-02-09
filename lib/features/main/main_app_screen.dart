import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/color.dart';
import 'package:greenmart/core/styles/text_style.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

int currentIndex = 0;
List<Widget> screens = [
  Center(child: Text('Home')),
  Center(child: Text('Explore')),
  Center(child: Text('Cart')),
  Center(child: Text('Favorites')),
  Center(child: Text('Profile')),
];

class _MainAppScreenState extends State<MainAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.backgroundColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        selectedLabelStyle: TextStyles.small.copyWith(
          fontWeight: FontWeight.w500,
          height: 1.8,
        ),
        unselectedLabelStyle: TextStyles.small.copyWith(
          fontWeight: FontWeight.w500,
          height: 1.8,
        ),
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
            label: 'Home',
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

            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.userSvg),
            activeIcon: CustomSvgPicture(
              path: AppImages.userSvg,
              color: AppColors.primaryColor,
            ),

            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
