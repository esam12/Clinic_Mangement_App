import 'package:clinic_management/core/constants/sizes.dart';
import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/features/home/views/widgets/doctor_blue_container.dart';
import 'package:clinic_management/features/home/views/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              verticalSpace(16.h),
              DoctorBlueContainer()
            ],
          ),
        ),
      ),
    );
  }
}
