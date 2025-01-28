import 'package:auth_app/core/constants/api_urls.dart';
import 'package:auth_app/core/network/dio_client.dart';
import 'package:auth_app/data/models/signup_req_params.dart';
import 'package:auth_app/service_locator.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthApiService {
  Future signup(SignupReqParams signupReq);
}

class AuthApiServiceImpl implements AuthApiService {
  @override
  Future signup(SignupReqParams signupReq) async {
    try {
      var response = await sl<DioClient>().post(ApiUrls.REGISTER);
      data:
      signupReq.toMap();
      return right(response);
    } on DioException catch (e) {
      return left(e.response!.data['message']);
    }
  }
}
