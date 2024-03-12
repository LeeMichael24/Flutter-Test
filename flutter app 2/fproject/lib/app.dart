import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fproject/app_view.dart';
import 'package:fproject/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:user_repository/source/user_repo.dart';

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    //lo que permite este bloc es pasar la autenticacion y verifica si esta o no
    // luego de verificar si esta, transfiere hacia a vista determinada osea app_view.dart
    return RepositoryProvider<AuthenticationBloc>(
      create: (context) => AuthenticationBloc(
        userRepository: userRepository
      ),
      child: const MyAppView(),
    );
  }
}
