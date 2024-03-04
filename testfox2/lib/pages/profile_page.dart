import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text("Profile Page", style: TextStyle(fontSize: 40),),
      ),
    );
  }
}