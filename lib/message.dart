import 'package:flutter/material.dart';

class Message extends StatefulWidget{
  const Message({Key? key}) : super(key: key);
  @override

  State<Message> createState()=> _MessageState();
}



class _MessageState extends State<Message>{

  final mensaje = TextEditingController();

  String _mess="";

  void _mostrarText(String mes){
    setState(() {
      _mess = mes;
      print(_mess);
    });
  }


  @override

  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        const Text("Mensajes a enviar", style: TextStyle(fontSize: 30,color: Colors.blue),),
        SizedBox(height: 25,),
        TextField(controller: mensaje, decoration: InputDecoration(labelText: "Mensaje"),),
        SizedBox(height: 25,),
        ElevatedButton(onPressed: (){

          _mostrarText(mensaje.text);


          mensaje.text="";

        }, child: const Text("enviar")),


        SizedBox(height: 60,child: Text('${_mess}', style: TextStyle(fontSize: 25, color: Colors.black),),)
      ],
    );
  }

}