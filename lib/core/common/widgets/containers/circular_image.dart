
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_management/core/common/shimmers/shimmer_effect.dart';
import 'package:clinic_management/core/constants/sizes.dart';
import 'package:clinic_management/core/helpers/helper_functions.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class DCircularImage extends StatelessWidget {
  const DCircularImage({
    super.key,
    this.boxFit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = DSizes.sm,
  });

  final BoxFit? boxFit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (DHelperFunctions.isDarkMode(context)
                ? AppColor.black
                : AppColor.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isNetworkImage
            ? CachedNetworkImage(
                imageUrl: image,
                fit: boxFit,
                color: overlayColor,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    const DShimmerEffect(width: 55, height: 55),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
            : Image(
                image:
                    // isNetworkImage
                    //     ? NetworkImage(image)
                    //     :
                    AssetImage(image) as ImageProvider,
                fit: boxFit,
                color: overlayColor),
      ),
    );
  }
}
