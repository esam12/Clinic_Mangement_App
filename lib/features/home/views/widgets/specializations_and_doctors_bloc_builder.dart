import 'package:clinic_management/core/common/texts/section_heading.dart';
import 'package:clinic_management/core/helpers/spacing.dart';
import 'package:clinic_management/features/home/logic/cubit/home_cubit.dart';
import 'package:clinic_management/features/home/logic/cubit/home_state.dart';
import 'package:clinic_management/features/home/views/widgets/doctor_speciality_listview.dart';
import 'package:clinic_management/features/home/views/widgets/recommendation_doctor_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

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
          specializationsSuccess: (specializationsResponseModel) {
            return setupSuccess(specializationsResponseModel);
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
    return SizedBox(
      height: 100.h,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setupError(String error) {
    return const SizedBox.shrink();
  }

  Widget setupSuccess(specializationsResponseModel) {
    var specializations = specializationsResponseModel.specializationsDataList;
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListview(specializationList: specializations ?? []),
          verticalSpace(20.h),
          const DSectionHeader(title: 'Recommendation Doctor'),
          verticalSpace(12.h),
          RecommendationDoctorListview(
            doctorsListModel: specializations?[0]?.doctorsList ?? [],
          ),
        ],
      ),
    );
  }
}
