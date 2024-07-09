import 'package:clinic_management/core/common/widgets/shimmer/shimmer_effect.dart';
import 'package:clinic_management/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListviewShimmer extends StatelessWidget {
  const SpecialityListviewShimmer({super.key, this.itemCount = 5});
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.separated(
          separatorBuilder: (_, __) =>
              const SizedBox(width: DSizes.spaceBtwItems),
          itemCount: itemCount,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, __) {
            return Column(
              children: [
                /// Image
                ShimmerEffect(width: 55.w, height: 55.h, raduis: 55),
                SizedBox(height: DSizes.spaceBtwItems / 2.h),

                /// Text
                ShimmerEffect(width: 55.w, height: 8.h),
              ],
            );
          }),
    );
  }
}
