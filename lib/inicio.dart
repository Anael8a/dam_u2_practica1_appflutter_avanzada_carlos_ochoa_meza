
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget{
  const Inicio({Key? key}) : super(key: key);
  @override

    State<Inicio> createState()=> _InicioState();
  }



class _InicioState extends State<Inicio>{


  Widget build(BuildContext context) {
  return ListView(
    padding: EdgeInsets.all(30),
    children: [
      SizedBox(height: 400,
        width: 500,
        child: Image.asset('assets/tec.png'),),

      const Text("(C) Reservados", style: TextStyle(fontSize: 30, color: Colors.red), textAlign: TextAlign.center,),
      const Text("Carlos Ochoa", style: TextStyle(fontSize: 30, color: Colors.red,),textAlign: TextAlign.center,),
      const Text("Instituto Tecnologico de Tepic", style: TextStyle(fontSize: 15, color: Colors.blue),textAlign: TextAlign.center,),
    ],

  );
  }

}