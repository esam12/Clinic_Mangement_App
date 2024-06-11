import 'package:clinic_management/core/di/dependency_injection.dart';
import 'package:clinic_management/core/routing/app_router.dart';
import 'package:clinic_management/clinic_management_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ClinicManegementApp(
      appRouter: AppRouter(),
    ),
  );
}
