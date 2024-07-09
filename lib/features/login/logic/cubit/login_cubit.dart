import 'package:clinic_management/core/constants/constants.dart';
import 'package:clinic_management/core/helpers/shared_pref_helper.dart';
import 'package:clinic_management/core/networking/dio_factory.dart';
import 'package:clinic_management/features/login/data/models/login_request_body.dart';
import 'package:clinic_management/features/login/data/repos/login_repo.dart';
import 'package:clinic_management/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));
    response.when(success: (loginResponse) async {
      emit(LoginState.success(loginResponse));
      await saveUserToken(loginResponse.userData!.token ?? '');
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    // save token to shared preferences
    await SharedPrefHelper.setSecureString(ConstantsData.userToken, token);
    DioFactory.setTokenInToHeaderAfterLogin(token);
  }
}
