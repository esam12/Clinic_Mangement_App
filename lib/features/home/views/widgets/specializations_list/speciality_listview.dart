import 'package:clinic_management/core/constants/sizes.dart';
import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:clinic_management/features/home/logic/cubit/home_cubit.dart';
import 'package:clinic_management/features/home/views/widgets/specializations_list/speciality_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListview extends StatefulWidget {
  final List<SpecializationsData?> specializationList;
  const SpecialityListview({super.key, required this.specializationList});

  @override
  State<SpecialityListview> createState() => _SpecialityListviewState();
}

class _SpecialityListviewState extends State<SpecialityListview> {
  var selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.separated(
        itemCount: widget.specializationList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedSpecializationIndex = index;
            });

            context.read<HomeCubit>().getDoctorsList(
                specializationId: widget.specializationList[index]?.id);
          },
          child: SpecialityListViewItem(
            data: widget.specializationList[index],
            selectedIndex: selectedSpecializationIndex,
            itemIndex: index,
          ),
        ),
        separatorBuilder: (_, __) =>
            const SizedBox(width: DSizes.spaceBtwItems),
      ),
    );
  }
}
