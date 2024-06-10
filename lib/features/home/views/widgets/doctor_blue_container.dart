import 'package:clinic_management/core/constants/image_strings.dart';
import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 167.h,
            padding: EdgeInsets.fromLTRB(18.w, 12.h, 31.w, 15.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: AppColor.primaryColor,
              image: const DecorationImage(
                image: AssetImage(DImages.imagesBgBlueCard),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    'Book and\nschedule with\nnearest doctor',
                    style: AppStyles.font18WhiteMedium,
                  ),
                ),
                verticalSpace(16.h),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: AppStyles.font12BlueRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 8.h,
            right: 8.w,
            child: Image.asset(
              DImages.imagesHomeDoctorCard,
              //height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
