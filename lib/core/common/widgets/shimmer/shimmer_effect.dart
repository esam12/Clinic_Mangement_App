import 'package:clinic_management/core/helpers/helper_functions.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      this.raduis = 15.0,
      this.color});

  final double width, height, raduis;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? AppColor.darkerGrey : AppColor.white),
          borderRadius: BorderRadius.circular(raduis),
        ),
      ),
    );
  }
}
