import 'package:clinic_management/core/helpers/extensions.dart';
import 'package:clinic_management/core/routing/routes.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocTextAndButton extends StatelessWidget {
  const DocTextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            textAlign: TextAlign.center,
            style: AppStyles.font13GreyRegular,
          ),
          SizedBox(height: 30.h),
          TextButton(
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColor.primaryColor),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: WidgetStateProperty.all(
                  const Size(double.infinity, 52),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                )),
            onPressed: () {
              context.pushNamed(Routes.homeScreen);
            },
            child: Text(
              'Get Started',
              style: AppStyles.font16WhiteSemiBold,
            ),
          )
        ],
      ),
    );
  }
}
