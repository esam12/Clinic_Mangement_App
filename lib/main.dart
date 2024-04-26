import 'package:clinic_management/core/di/dependency_injection.dart';
import 'package:clinic_management/core/routing/app_router.dart';
import 'package:clinic_management/clinic_management_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();

  runApp(ClinicManegementApp(
    appRouter: AppRouter(),
  ));
}
