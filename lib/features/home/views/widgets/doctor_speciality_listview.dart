import 'package:clinic_management/core/constants/image_strings.dart';
import 'package:clinic_management/core/constants/sizes.dart';
import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListview extends StatelessWidget {
  const DoctorSpecialityListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) => const DoctorSpecialityItemView(),
        separatorBuilder: (_, __) =>
            const SizedBox(width: DSizes.spaceBtwItems),
      ),
    );
  }
}

class DoctorSpecialityItemView extends StatelessWidget {
  const DoctorSpecialityItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35.r,
          backgroundColor: AppColor.bgItemColor,
          foregroundColor: Colors.transparent,
          child: Image.asset(
            "assets/images/general_speciality.png",
            width: 50.h,
            height: 50.h,
          ),
        ),
        verticalSpace(8.h),
        Text(
          'General',
          style: AppStyles.font12BlueRegular.copyWith(color: AppColor.darkBlue),
        )
      ],
    );
  }
}
