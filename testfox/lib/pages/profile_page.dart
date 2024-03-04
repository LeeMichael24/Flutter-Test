import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 191),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Profile', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Text("Profile Page", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
      ),
    );
  }
}