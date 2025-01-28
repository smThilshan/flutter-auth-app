import 'package:auth_app/core/network/dio_client.dart';
import 'package:auth_app/data/source/auth_api_service.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  // Register services
  sl.registerSingleton<DioClient>(DioClient());
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());
}
