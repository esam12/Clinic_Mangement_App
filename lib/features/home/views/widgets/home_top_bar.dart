import 'package:clinic_management/core/constants/image_strings.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:clinic_management/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, ISAM',
              style: AppStyles.font18DarkBlackBold,
            ),
            Text(
              'How Are you Today?',
              style: AppStyles.font11LightGrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: AppColor.moreLighterGrey,
          child: SvgPicture.asset(DImages.svgsNotification),
        )
      ],
    );
  }
}
