import 'package:auth_app/common/bloc/auth/auth_state_cubit.dart';
import 'package:auth_app/common/bloc/auth/auth_state.dart';
import 'package:auth_app/core/network/dio_client.dart';
import 'package:auth_app/data/repository/auth.dart';
import 'package:auth_app/data/source/auth_api_service.dart';
import 'package:auth_app/data/source/auth_local_service.dart';
import 'package:auth_app/domain/resopisitory/auth.dart';
import 'package:auth_app/domain/usecases/is_logged_in.dart';
import 'package:auth_app/domain/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //  Services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  sl.registerSingleton<AuthLocalService>(AuthLocalServiceImpl());

  // Repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // UseCases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());

  // Register AuthStateCubit **AFTER IsLoggedInUseCase**
  sl.registerLazySingleton<AuthStateCubit>(
      () => AuthStateCubit(UnauthenticatedState()));
}
