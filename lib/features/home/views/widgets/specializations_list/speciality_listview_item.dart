import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? data;
  final int selectedIndex;
  final int itemIndex;
  const SpecialityListViewItem(
      {super.key,
      this.data,
      required this.selectedIndex,
      required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        selectedIndex == itemIndex
            ? Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.darkBlue),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: 35.r,
                  backgroundColor: AppColor.bgItemColor,
                  foregroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/general_speciality.png",
                    width: 52.w,
                    height: 52.h,
                  ),
                ),
              )
            : CircleAvatar(
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
          style: itemIndex == selectedIndex
              ? AppStyles.font14DarkBlueBold
              : AppStyles.font12BlueRegular.copyWith(color: AppColor.darkBlue),
        )
      ],
    );
  }
}
