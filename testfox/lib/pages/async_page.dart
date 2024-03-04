import 'package:flutter/material.dart';
import 'package:testfox/utils/loaders.dart';


class AsyncPage extends StatelessWidget {
  const AsyncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 191),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Async/await', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => LoadingPageSimu()),
                );
              }, 
              child: Text('Load data')
            ),
            const SizedBox(
                height: 5,
              ), 
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => LoadingPageSimu2()),
                );
              }, 
              child: Text('Load ListView data')
            ),
          ],
        ),
      )
    );
  }
}
