import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_management/core/common/shimmers/shimmer_effect.dart';
import 'package:clinic_management/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class DRoundedImage extends StatelessWidget {
  const DRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onTab,
    this.borderRaduis = DSizes.md,
    this.backgroundColor,
    this.border,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final VoidCallback? onTab;
  final double borderRaduis;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRaduis)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRaduis)
              : BorderRadius.zero,
          child: isNetworkImage
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: fit,
                  color: backgroundColor,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      DShimmerEffect(
                          width: width ?? 190, height: height ?? 190),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )
              : Image(
                  image:
                      // isNetworkImage
                      //     ? NetworkImage(imageUrl)
                      //     :
                      AssetImage(imageUrl) as ImageProvider,
                  fit: fit,
                  color: backgroundColor),
        ),
      ),
    );
  }
}
