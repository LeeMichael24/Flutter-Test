import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Settings Page'),
      ),
      body: Center(
        child: Text("Settings Page", style: TextStyle(fontSize: 40),),
      ),
    );
  }
}