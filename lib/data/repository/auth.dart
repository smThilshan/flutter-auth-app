import 'package:auth_app/data/models/signup_req_params.dart';
import 'package:auth_app/data/source/auth_api_service.dart';
import 'package:auth_app/domain/resopisitory/auth.dart';
import 'package:auth_app/service_locator.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(SignupReqParams signupReq) async {
    try {
      final result = await sl<AuthApiService>().signup(signupReq);
      return Right(result);
    } catch (e) {
      return Left(e);
    }
  }
}
