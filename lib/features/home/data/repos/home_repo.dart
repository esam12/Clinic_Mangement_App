import 'dart:async';

import 'package:clinic_management/core/networking/api_error_handler.dart';
import 'package:clinic_management/core/networking/api_result.dart';
import 'package:clinic_management/features/home/data/apis/home_api_service.dart';
import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationResponseModel>> getSpecializations() async {
    try {
      final response = await _homeApiService.getSpecializations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
