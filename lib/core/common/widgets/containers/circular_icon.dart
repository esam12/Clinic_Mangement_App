
import 'package:clinic_management/core/constants/sizes.dart';
import 'package:clinic_management/core/helpers/helper_functions.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class DCircularIcon extends StatelessWidget {
  const DCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = DSizes.lg,
    required this.icon,
    this.color,
    this.backgroundcolor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundcolor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundcolor ??
            (dark
                ? AppColor.black.withOpacity(0.9)
                : AppColor.white.withOpacity(0.9)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
