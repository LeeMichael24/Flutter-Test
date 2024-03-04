import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isContainerColored = false;

  void _toggleContainerColor() {
    setState(() {
      _isContainerColored = !_isContainerColored;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(221, 58, 57, 57),
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),
            const SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profilepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Setting', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Logout', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                //usamos pushReplacemnet para borrar el que puedan regrear a la pantalla de home
                Navigator.pushReplacementNamed(context, '/loginpage');
              },
            ),
          ],
        ),
      ),
      body: Center(
        //en este caso utilice un animatedContainer que al hacer tab cambia de color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page", style: TextStyle(fontSize: 40),),
            SizedBox(height: 40,),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: 200,
              height: 200,
              color: _isContainerColored ? Colors.green : Colors.blue,
              child: InkWell(
                onTap: _toggleContainerColor,
                child: Center(
                  child: Text(
                    'Tap to Change Color',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
