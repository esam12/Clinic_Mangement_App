import 'package:clinic_management/core/common/widgets/shimmer/doctors_listview_shimmer.dart';
import 'package:clinic_management/core/common/widgets/shimmer/speciality_listview_shimmer.dart';
import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/features/home/logic/cubit/home_cubit.dart';
import 'package:clinic_management/features/home/logic/cubit/home_state.dart';
import 'package:clinic_management/features/home/views/widgets/specializations_list/speciality_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsSuccess ||
          current is SpecializationsLoading ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationsDataList) {
            return setupSuccess(specializationsDataList);
          },
          specializationsError: (error) {
            return setupError(error.toString());
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityListviewShimmer(),
          verticalSpace(16.h),
          const DoctorsListviewShimmer(),
        ],
      ),
    );
  }

  Widget setupError(String error) {
    return const SizedBox.shrink();
  }

  Widget setupSuccess(specializationsDataList) {
    var specializations = specializationsDataList;
    return SpecialityListview(specializationList: specializations ?? []);
  }
}
