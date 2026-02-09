import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constants/app_images.dart';
import 'package:greenmart/core/styles/color.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    super.key, required this.path, this.color,
  });
final String path;
final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      // AppImages.storeSvg,
      colorFilter: 
      color != null ?
      ColorFilter.mode(
        color!,
        BlendMode.srcIn,
      ) : null ,
    );
  }
}
