import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fproject/simple_bloc_observer.dart';
import 'package:user_repository/source/firebase_ser_repo.dart';
import 'app.dart';

void main() async {
  //Colocamos nuestro endpoind de la base google
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //Un observador para monitorear el estado de la funcion.
  Bloc.observer = SimpleBlocObserver();

  runApp(MyApp(FirebaseUserRepo()));
}
