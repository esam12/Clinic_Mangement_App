import 'package:clinic_management/features/home/logic/cubit/home_cubit.dart';
import 'package:clinic_management/features/home/logic/cubit/home_state.dart';
import 'package:clinic_management/features/home/views/widgets/doctors_list/doctors_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorBlocBuilder extends StatelessWidget {
  const DoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) => setupSuccess(doctorsList),
          doctorsError: (error) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSuccess(doctorsList) {
    return DoctorsListview(
      doctorsListModel: doctorsList,
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
