import 'package:clinic_management/core/networking/api_service.dart';
import 'package:clinic_management/core/networking/dio_factory.dart';
import 'package:clinic_management/features/home/data/apis/home_api_service.dart';
import 'package:clinic_management/features/home/data/repos/home_repo.dart';
import 'package:clinic_management/features/signup/data/repos/signup_repo.dart';
import 'package:clinic_management/features/signup/logic/cubit/singup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // SignUp

  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
