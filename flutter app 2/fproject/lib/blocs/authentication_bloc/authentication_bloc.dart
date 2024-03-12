import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/source/user_repo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
  extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;
  late final StreamSubscription<User?> _userSubscription;

  AuthenticationBloc({
    required this.userRepository
  }) : super(const AuthenticationState.unknown()) {
    log('Authenticationj  bloc created');
    _userSubscription = userRepository.user.listen((user) {
      add(AuthenticationUserChanged(user));
    });

    //ahora creamos que va a pasar si no esta autenticado
    on<AuthenticationUserChanged>((event, emit) {
      if(event.user  != null){
        emit(AuthenticationState.authenticated(event.user!));
      } else {
        emit(const AuthenticationState.unauthenticated());
      }
    });
  }

  //esto es para cancelar la suscripcion de la autenticacion cunado el bloc este cerrado
  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
