import 'package:flutter/material.dart';
import 'package:testfox/screens/listview_data_page.dart';
import 'package:testfox/screens/simpledata_screen.dart';


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
              onPressed: () async{
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    content: Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                        strokeWidth: 5.0,
                        value: 0.5,
                      ), // Use your custom loader widget
                    ),
                  ),
                );

                //Simular el loading de los 3 segundos
                await Future.delayed(const Duration(seconds: 3));

                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => LoadedScreen()),
                );
              }, 
              child: Text('Load data')
            ),
            const SizedBox(
                height: 5,
              ), 
            ElevatedButton(
              onPressed: () async{
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    content: Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                        strokeWidth: 5.0,
                        value: 0.5,
                      ), // Use your custom loader widget
                    ),
                  ),
                );

                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ListViewPageData()),
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
