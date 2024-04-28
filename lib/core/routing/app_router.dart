import 'package:clinic_management/core/di/dependency_injection.dart';
import 'package:clinic_management/core/routing/routes.dart';
import 'package:clinic_management/features/login/logic/cubit/login_cubit.dart';
import 'package:clinic_management/features/login/views/login_screen.dart';
import 'package:clinic_management/features/onboarding/onboarding_screen.dart';
import 'package:clinic_management/features/signup/logic/cubit/singup_cubit.dart';
import 'package:clinic_management/features/signup/ui/signup_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignupScreen(),
          ),
        );
      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
