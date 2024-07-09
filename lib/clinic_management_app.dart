import 'package:clinic_management/core/constants/constants.dart';
import 'package:clinic_management/core/routing/app_router.dart';
import 'package:clinic_management/core/routing/routes.dart';
import 'package:clinic_management/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClinicManegementApp extends StatelessWidget {
  final AppRouter appRouter;
  const ClinicManegementApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
