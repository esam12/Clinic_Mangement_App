import 'package:clinic_management/core/constants/image_strings.dart';
import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorListview extends StatelessWidget {
  const RecommendationDoctorListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
            child: Row(
              children: [
                Image.asset(
                  DImages.imagesRecommendationDoctor1,
                  width: 110.w,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
                horizontalSpace(16.h),
                Column(
                  children: [
                    Text('Dr. Randy Wigham',
                        style: AppStyles.font16DarkDarkBlueBold),
                    verticalSpace(8.h),
                    Text('Degree | +905377021105',
                        style: AppStyles.font12GreyMedium),
                    verticalSpace(8.h),
                    Text('Email | randy@gmail.com',
                        style: AppStyles.font12GreyMedium),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
