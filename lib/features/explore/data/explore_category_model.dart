import 'package:flutter/material.dart';

class ExploreCategoryModel {
  final String id;
  final String title;
  final String imagePath;
  final Color bgColor;
  final Color borderColor;

  ExploreCategoryModel({
    required this.id,
    required this.title,
    required this.imagePath,
    required this.bgColor,
    required this.borderColor,
  });
}
