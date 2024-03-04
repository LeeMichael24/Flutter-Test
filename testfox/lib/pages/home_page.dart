import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //Creamos 2 variables para guardar el valor de los colores
  // asi no congestionamos el codigo
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;

  //AHora tenermos que crear la funcion con un state para controlar
  // el cambio dinamico que van a generar en la pantalla
  void _changeToDarckMode() {
    setState(() {
      _backgroundColor = Colors.black;
      _textColor = Colors.white;
    });
  }

  void _changeToLightMode() {
    setState(() {
      _backgroundColor = Colors.white;
      _textColor = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          title: Text("Welcome to Flutter", style: TextStyle(color: _textColor)),
          elevation: 0,
          backgroundColor: Colors.blue,
        ),

        drawer: Drawer(
        backgroundColor: const Color.fromARGB(221, 58, 57, 57),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //common to place a drawer header
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),

            const SizedBox(
              height: 20,
            ),
            //home page list
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home', style: TextStyle(color: Colors.white),),
              onTap: () {
                //pop drawer close first
                Navigator.pop(context);
                //go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
              onTap: () {
                //pop drawer close first
                Navigator.pop(context);
                //go to first page
                Navigator.pushNamed(context, '/profilepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting', style: TextStyle(color: Colors.white)),
              onTap: () {
                //pop drawer close first
                Navigator.pop(context);
                //go to settings page
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Async', style: TextStyle(color: Colors.white)),
              onTap: () {
                //pop drawer close first
                Navigator.pop(context);
                //go to settings page
                Navigator.pushNamed(context, '/asyncpage');
              },
            )
          ],
        ),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello world!',
                style: TextStyle(
                    color: _textColor, //CHANGE ON | OFF
                    fontSize: 24
                  ),
              ),
              const SizedBox(
                height: 20,
              ), //gap para botones
              ElevatedButton(
                onPressed: _changeToDarckMode,
                child: const Text(
                  'Im dark now!',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.all(20),
                  ),
              ),
              const SizedBox(
                height: 5,
              ), //gap para botones
              ElevatedButton(
                onPressed: _changeToLightMode,
                child: const Text(
                  'Im light now!',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(20),
                ),
              ),
            ],
          ),
        )
      );
  }
}
