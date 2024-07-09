import 'package:clinic_management/core/common/widgets/shimmer/shimmer_effect.dart';
import 'package:clinic_management/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListviewShimmer extends StatelessWidget {
  const DoctorsListviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (_, __) => const DoctorsListviewItemShimmer(),
          separatorBuilder: (_, __) =>
              const SizedBox(height: DSizes.spaceBtwItems),
          itemCount: 5),
    );
  }
}

class DoctorsListviewItemShimmer extends StatelessWidget {
  const DoctorsListviewItemShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        // Image
        ShimmerEffect(width: 110.w, height: 120.h),
        SizedBox(width: DSizes.spaceBtwItems.h),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              /// Text
              ShimmerEffect(width: 180.w, height: 14.h),
              SizedBox(height: DSizes.spaceBtwItems.h),
          
              /// Text
              ShimmerEffect(width: 160.w, height: 14.h),
              SizedBox(height: DSizes.spaceBtwItems.h),
          
              /// Text
              ShimmerEffect(width: 180.w, height: 14.h),
            ],
          ),
        )
      ],
    );
  }
}
