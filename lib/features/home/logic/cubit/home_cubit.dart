import 'package:clinic_management/features/home/data/repos/home_repo.dart';
import 'package:clinic_management/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(success: (specializationsResponseModel) {
      emit(
        HomeState.specializationsSuccess(specializationsResponseModel),
      );
    }, failure: (errorHandler) {
      emit(
        HomeState.specializationsError(errorHandler),
      );
    });
  }
}