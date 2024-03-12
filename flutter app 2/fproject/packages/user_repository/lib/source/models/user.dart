import 'package:equatable/equatable.dart';
import 'package:user_repository/source/entities/entities.dart';

class MyUserModel extends Equatable {
  final String userId;
  final String email;
  final String name;

  const MyUserModel({
    required this.userId,
    required this.email,
    required this.name
  });

  //crear un metodo basio, porque si viene mal escrito tira error, para evitar
  static const empty = MyUserModel(
    userId: '', 
    email: '', 
    name: '',
  );

  //Esto lo creamos por si el los parametros vienen nulos
  MyUserModel copyWith({
    String? userId,
    String? email,
    String? name,
  }) {
    return MyUserModel(
      userId: userId ?? this.userId, 
      email: email ?? this.email, 
      name: name ?? this.email,
    );
  }

  //Vamo a crear otro metodo que estar separado, para comvertir de myuser to my entity 
  // paras que manden data a la base
  MyUserEntity toEntity(){
    return MyUserEntity(
      userId: userId, 
      email: email, 
      name: email,
    );
  }
  
  static MyUserModel fromEntity(MyUserEntity entity){
    return MyUserModel(
      userId: entity.userId, 
      email: entity.email, 
      name: entity.name
    );
  }

  @override
  // esto es el arryar que esta esparando el parametro de la clase, userId, name y email
  List<Object?> get props => [userId, email, name];


}
