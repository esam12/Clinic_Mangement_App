import 'package:clinic_management/core/helpers/extensions.dart';
import 'package:clinic_management/core/networking/api_error_handler.dart';
import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:clinic_management/features/home/data/repos/home_repo.dart';
import 'package:clinic_management/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(success: (specializationsResponseModel) {
      specializationsList =
          specializationsResponseModel.specializationsDataList ?? [];
      emit(
        HomeState.specializationsSuccess(specializationsList),
      );
    }, failure: (errorHandler) {
      emit(
        HomeState.specializationsError(errorHandler),
      );
    });
  }

  void getDoctorsList({required int? specializationId}) async {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No data found')));
    }
  }

  /// Returns the list of doctors based on specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
