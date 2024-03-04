import 'package:flutter/material.dart';
import 'package:testfox/pages/async_page.dart';
import 'package:testfox/screens/listview_data_page.dart';
import 'package:testfox/screens/simpledata_screen.dart';



//Creamos la animacion loading, esto representa una forma async de como 
// manejar el estado de nuestra llamadas a la api y resivirlas.
class LoadingPageSimu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Usamos la funcion future para captura el tiempo de carga en pantalla
    Future.delayed(Duration(seconds: 3), () {
      // Despues de los 3 segundos, nos redirigimos a nuestra pagina LoadedScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoadedScreen()),
      );
    });

    // Animacion del loading con CircularProgressIndicator
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 191),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Loading...'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}


//REUTILISAMOS LA PANTALLA DE CARGA DEL ASYNCPAGE
//Creamos la animacion loading
class LoadingPageSimu2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Usamos la funcion future para captura el tiempo de carga en pantalla
    Future.delayed(Duration(seconds: 3), () {
      // Despues de los 3 segundos, nos redirigimos a nuestra pagina LoadedScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ListViewPageData()
        ),
      );
    });

    // Animacion del loading con CircularProgressIndicator
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 191),
      appBar: AppBar(
        title: Text('Loading...'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}