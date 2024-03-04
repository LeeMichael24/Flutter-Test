import 'package:flutter/material.dart';

class LoadedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Display the loaded state
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 191),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Loaded Data'),
      ),
      body: Center(
        child: Text('Data Loaded!'),
      ),
    );
  }
}