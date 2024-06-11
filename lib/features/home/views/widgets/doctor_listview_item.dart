import 'package:clinic_management/core/constants/image_strings.dart';
import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({
    super.key,
    this.doctorsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(doctorsModel?.name ?? '',
                  style: AppStyles.font16DarkDarkBlueBold),
              verticalSpace(8.h),
              Text('${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: AppStyles.font12GreyMedium),
              verticalSpace(8.h),
              Text('${doctorsModel?.email}', style: AppStyles.font12GreyMedium),
            ],
          ),
        ],
      ),
    );
  }
}
