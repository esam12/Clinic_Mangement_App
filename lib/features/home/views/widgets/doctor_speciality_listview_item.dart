import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? data;
  const DoctorSpecialityListViewItem({super.key, this.data});

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
          data?.name ?? '',
          style: AppStyles.font12BlueRegular.copyWith(color: AppColor.darkBlue),
        )
      ],
    );
  }
}