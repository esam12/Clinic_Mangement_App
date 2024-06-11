import 'package:clinic_management/core/networking/api_constants.dart';
import 'package:clinic_management/features/home/data/apis/home_api_constants.dart';
import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specialization)
  Future<SpecializationResponseModel> getSpecializations();
}
