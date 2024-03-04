import 'package:flutter/material.dart';
import 'package:testfox/data/database.dart';
import 'package:testfox/utils/container_todo.dart';


class ListViewPageData extends StatefulWidget {
  const ListViewPageData({super.key});

  @override
  State<ListViewPageData> createState() => _ListViewPageDataState();
}

class _ListViewPageDataState extends State<ListViewPageData> {

  //Crear una instancia de la base de datos para que no falle toDoList del principio
  ToDoDataBase db = ToDoDataBase();

  //AHora creamos nuestor Metodo onChnage, cuando a checkbox sea tap
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 191, 191),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('ListView Data Page'),
      ),
      body: ListView.builder(
        itemCount:
            db.toDoList.length, //para crear las que sean necesarias con el lengh
        itemBuilder: (context, index) {
          return ToDoTileBox(
            taskName: db.toDoList[index][0], //vamos a buscar cualquier cosa que este en Index, a partir de lengh, cuantos todo tenemos,|en la position que esta como es el primero
            taskCompleted: db.toDoList[index][1],// este comienza en 1 porque es la posicion 2, 'tutorial, false
            onChange:(value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}