import 'package:clinic_management/core/constants/sizes.dart';
import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:clinic_management/features/home/views/widgets/doctor_speciality_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListview extends StatelessWidget {
  final List<SpecializationsData?>? specializationList;
  const DoctorSpecialityListview({super.key, this.specializationList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        itemCount: specializationList?.length ?? 0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => DoctorSpecialityListViewItem(
          data: specializationList?[index],
        ),
        separatorBuilder: (_, __) =>
            const SizedBox(width: DSizes.spaceBtwItems),
      ),
    );
  }
}
