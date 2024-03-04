import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 191),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Settings', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text("Settings Page", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
      ),
    );
  }
}