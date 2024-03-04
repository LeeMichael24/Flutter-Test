// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';

class ToDoTileBox extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;

  //Method Onchange
  Function(bool?)? onChange;

  ToDoTileBox({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    // Display the loaded state
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Row(
              children: [
                //Icono del Check Box
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChange,
                  activeColor: Colors.green,
                ),

                //texto del contenedor
                Text(
                  taskName,

                  //ver el comportamiento de taskCompleted = true, mark sino no se coloca linea none
                  style: TextStyle( color: Colors.white,
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none
                    ),
                ),
              ],
            ),
            //Estilos del contenedor
            padding: const EdgeInsets.all(24), //padding para el texto dentro
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
          ))
        ],
      ),
    );
  }
}
