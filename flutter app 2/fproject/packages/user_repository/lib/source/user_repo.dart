//como es uina class abstracta no se puede instanciar, lo que hacemos es crear otro clase que emplemente,
// esta clase abstracta
import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/source/models/user.dart';

abstract class UserRepository {
  //tenemos que crear los metodos abstarctos pero nos movemos al firebase file

  Stream<User?> get user;

  Future<MyUserModel> signUp(MyUserModel myUserModel , String password);

  Future<void> setUserData(MyUserModel myUserModel);
  
  Future<void> signIn(String email, String password);
  
  Future<void> logOut();
}
