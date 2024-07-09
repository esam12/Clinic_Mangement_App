import 'package:clinic_management/core/constants/constants.dart';
import 'package:clinic_management/core/di/dependency_injection.dart';
import 'package:clinic_management/core/helpers/shared_pref_helper.dart';
import 'package:clinic_management/core/routing/app_router.dart';
import 'package:clinic_management/clinic_management_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(
    ClinicManegementApp(
      appRouter: AppRouter(),
    ),
  );
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecureString(ConstantsData.userToken);
  if (userToken != null && userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
