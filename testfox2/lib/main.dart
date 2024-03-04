import 'package:flutter/material.dart';
import 'package:testfox2/pages/home_page.dart';
import 'package:testfox2/pages/login_page.dart';
import 'package:testfox2/pages/profile_page.dart';
import 'package:testfox2/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        '/loginpage' :(context) => LoginScreen(),
        '/homepage' :(context) => const HomePage(),
        '/profilepage' :(context) => const ProfilePage(),
        '/settingspage' :(context) => const SettingsPage(),
      },
    );
  }
}