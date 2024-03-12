import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/source/models/user.dart';
import 'package:user_repository/source/user_repo.dart';

class FirebaseUserRepo implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  final userCollection = FirebaseFirestore.instance.collection('users');

  //crar el metodo del auth
  FirebaseUserRepo({
    FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  //Esta funcion lo que hace trigerear el auth cada vez que alguien ingrese
  Stream<User?> get user {
    return _firebaseAuth.authStateChanges().map((event) {
      return event;
    });
  }

  @override
  Future<void> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password
      );
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<MyUserModel> signUp(MyUserModel myUserModel, String password) async{
    // Esto conteiene el id del usuario que se esta logeando en user, y separamos de no ponerlo junto con contra
    //y el id viene de la database
    try {
      UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
        email: myUserModel.email, 
        password: password
      );

      myUserModel = myUserModel.copyWith(
        userId: user.user!.uid
      );

      return myUserModel;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> setUserData(MyUserModel myUserModel) async{
    // Tenemos que referir la coleccion de usuarios y al metodo entity
    try {
      await userCollection
        .doc(myUserModel.userId)
        .set(myUserModel.toEntity().toDocument());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
  
  @override
	Future<void> logOut() async {
		await _firebaseAuth.signOut();
	}
}
