
import 'package:dam_u2_practica1_appflutter_avanzada_carlos_ochoa_meza/inicio.dart';
import 'package:dam_u2_practica1_appflutter_avanzada_carlos_ochoa_meza/message.dart';
import 'package:dam_u2_practica1_appflutter_avanzada_carlos_ochoa_meza/perfil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aplicacion9 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Aplicacion9();
  }

}

class _Aplicacion9 extends State<Aplicacion9>{
  int _indice=0;

  void _cambiarIndice(int indice){
    setState(() {
      _indice= indice;
    });
  }

  final List<Widget> _paginas = [
    Perfil(),
    Inicio(),
    Message(),

  ];


  @override



  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Bienvenido"),
       centerTitle: true,
     ),
     body: _paginas[_indice],
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Perfil"),
         BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Inicio"),
         BottomNavigationBarItem(icon: Icon(Icons.mark_email_unread), label: "Message"),
       ],
       currentIndex: _indice,
       showUnselectedLabels: false,
       iconSize: 25,
       backgroundColor: Colors.blueGrey,
       selectedItemColor: Colors.white,
       unselectedItemColor: Colors.white38,
       onTap: _cambiarIndice,
     ),
   );
  }

}