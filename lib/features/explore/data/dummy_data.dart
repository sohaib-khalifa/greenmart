import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'explore_category_model.dart';

List<ExploreCategoryModel> exploreCategories = [
  ExploreCategoryModel(
    id: 'c1',
    title: 'Fresh Fruits & Vegetable',
    imagePath: AppImages.fruitsVegetable,
    // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6DTKe65t2kVlNwAzNT6-C64IggiGoNZ-gIQ&s',
    bgColor: Color(0xffEEF7F1),
    borderColor: Color(0xff53B175),
  ),
  ExploreCategoryModel(
    id: 'c2',
    title: 'Cooking Oil & Ghee',
    imagePath: AppImages.cookingOil,
    // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSADxZ-qCbjxlzs_GudIqMy_dX-Ud_dHCmTCw&s',
    bgColor: Color(0xffFDF3E7),
    borderColor: Color(0xffF8A44C),
  ),
  ExploreCategoryModel(
    id: 'c3',
    title: 'Meat & Fish',
    imagePath: AppImages.meatAndFish,
    // 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTLldcM8OvaBr6dU_FbqWwaP-8mDIcYMOaRK6o7pVWrBuiXQgP4',
    bgColor: Color(0xffFDE8E4),
    borderColor: Color(0xffF7A593),
  ),
  ExploreCategoryModel(
    id: 'c4',
    title: 'Bakery & Snacks',
    imagePath: AppImages.bakery,
    // 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcREwY4gsSYvxCx5gJrHoG9DQb10LAYOVWpKrv3hL-U3apVVXpEq',
    bgColor: Color(0xffF4EBF7),
    borderColor: Color(0xffD3B0E0),
  ),
  ExploreCategoryModel(
    id: 'c5',
    title: 'Dairy & Eggs',
    imagePath: AppImages.dairyEggs,
    // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR38H4tIqjAC2twA3syjjkDLKSInA1P7_RBnA&s',
    bgColor: Color(0xffFFF8E1),
    borderColor: Color(0xffFDE598),
  ),
  ExploreCategoryModel(
    id: 'c6',
    title: 'Beverages',
    imagePath: AppImages.beverages,
    // 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSYW94DIUlV-BycvWYumX7TolhSbR2PX5eWnD1uLiABhq_aNfU4',
    bgColor: Color(0xffE6F2FF),
    borderColor: Color(0xffB7DFF5),
  ),
  // ExploreCategoryModel(
  //   id: 'c7',
  //   title: 'Frozen Foods',
  //   imagePath:
  //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQRdMBDeb2uj0viiUmWgxAOrW-SORiZDVXAA&s',
  //   bgColor: Color(0xffEAF4FF),
  //   borderColor: Color(0xff6FA8DC),
  // ),
  // ExploreCategoryModel(
  //   id: 'c8',
  //   title: 'Household',
  //   imagePath:
  //        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPd5V-ckXsa9eIS4LTaGWNbU1uR4zL5c0ezQ&s',
  //   bgColor: Color(0xffF3F3F3),
  //   borderColor: Color(0xffBDBDBD),
  // ),
];
