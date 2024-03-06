import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  dynamic infoProfile;

  @override
  //Por reglas de flutter tiene que ser sincrono por eso creamos un method async para espera la respuesta de la api
  void initState() {
    // TODO: implement initState
    super.initState();
    getInfo();
  }

  //creamos un metodo async que retorna un void
  Future<void> getInfo() async {
    // Usaremos Dio -> mapea todo el contenido
    final response = await Dio().get('https://dummyjson.com/products/1');
    /* final response = await Dio().get('https://pokeapi.co/api/v2/pokemon/1'); */
    infoProfile = response.data;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //por ley tiene que ser miniscula
            Text( infoProfile?['title'] ?? 'No data' ),
            Text( infoProfile?['description'] ?? 'No data' ),
            Text( infoProfile?['price'].toString() ?? 'No data' ),
            Text( infoProfile?['rating'].toString() ?? 'No data' ),
          ],
        ),
      ),
    );
  }
}
