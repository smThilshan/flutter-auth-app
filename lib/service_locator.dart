import 'package:auth_app/core/network/dio_client.dart';
import 'package:auth_app/data/repository/auth.dart';
import 'package:auth_app/data/source/auth_api_service.dart';
import 'package:auth_app/domain/resopisitory/auth.dart';
import 'package:auth_app/domain/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //  Services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  // Repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // UseCases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
