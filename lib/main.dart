import 'package:auth_app/common/bloc/auth/auth_state.dart';
import 'package:auth_app/common/bloc/auth/auth_state_cubit.dart';
import 'package:auth_app/data/source/test_auth_service.dart';
import 'package:auth_app/presentation/auth/pages/signup.dart';
import 'package:auth_app/presentation/home/pages/home.dart';
import 'package:auth_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthStateCubit>(
      create: (context) => sl.get<AuthStateCubit>()..appStarted(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocBuilder<AuthStateCubit, AuthState>(
          builder: (context, state) {
            if (state is AuthenticatedState) {
              return const HomePage();
            }
            if (state is UnauthenticatedState) {
              return Signup(); // Show signup instead of empty container
            }
            return Container(); // Loading state
          },
        ),
      ),
    );
  }
}
