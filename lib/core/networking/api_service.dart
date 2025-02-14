import 'package:clinic_management/core/networking/api_constants.dart';
import 'package:clinic_management/features/login/data/models/login_request_body.dart';
import 'package:clinic_management/features/login/data/models/login_response.dart';
import 'package:clinic_management/features/signup/data/models/signup_request_body.dart';
import 'package:clinic_management/features/signup/data/models/signup_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // --------------------------------- Auth --------------------------------- //

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody requestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody requestBody,
  );
}
