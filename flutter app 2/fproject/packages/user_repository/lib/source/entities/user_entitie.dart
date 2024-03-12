import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable{
  final String userId;
  final String email;
  final String name;

  const MyUserEntity({
    required this.userId,
    required this.email,
    required this.name
  });
  
  //creamos 2 metodos, 1 que regrese un mapa prara transformar objetos en un map, mas facil de leer
  //y transformarlos en MyUserEntity object 
  Map<String, Object?> toDocument(){
    return {
      'userId': userId,
      'email': email,
      'name': name,
    };
  }

  //front document method
  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(
      userId: doc['userId'], 
      email: doc['email'], 
      name: doc['name']
    );
  }
  
  
  @override
  List<Object?> get props => [userId, email, name];

}