import 'package:dam_u2_practica1_appflutter_avanzada_carlos_ochoa_meza/inicio.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget{
  const Perfil({Key? key}) : super(key: key);
  @override

  State<Perfil> createState()=> _PerfilState();
}



class _PerfilState extends State<Perfil>{
  final usuario = TextEditingController();
  final password = TextEditingController();


  String usu ='';
  String pass='';

  @override

  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        const Text("Ingresa datos de usuario", textAlign: TextAlign.center, style: TextStyle(fontSize: 25, color: Colors.orange),),

        TextField(
          controller: usuario,
          decoration: InputDecoration(
            hintText: "Usuario",
          ),
        ),
        SizedBox(height: 25,),
        TextField(
          controller: password,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Contraseña",
          ),
        ),
        SizedBox(height: 35,),

        ElevatedButton(onPressed: (){
          usu = usuario.text;
          pass = password.text;

          print(usu);
          print(pass);

          usuario.text="";
          password.text="";

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Bienvenido "+usu+" ")),);
          Inicio();
        }, child: const Text("Ingresar"))

      ],

    );
  }

}