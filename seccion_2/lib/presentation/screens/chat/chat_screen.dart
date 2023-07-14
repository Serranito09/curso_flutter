import 'package:flutter/material.dart';
import 'package:seccion_2/presentation/shared/message_field_box.dart';
import 'package:seccion_2/presentation/widgets/chat/her_messages_bubble.dart';
import 'package:seccion_2/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:const Text('Belen'),
    centerTitle: false,
    leading: const Padding(
      padding:  EdgeInsets.all(4.0),//el padding nos sirve para poder editar el avatar para ello wrap in pudding
      child:  CircleAvatar(
      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/100231760?v=4'),
      ),
    ),
    ),
    body:_ChatView(),
    
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Column(
      children: [
      Expanded(//Expanded sirve para expandir un widget por toda la pantalla
       child:ListView.builder(
       itemCount: 100,
       
       itemBuilder: (context, index) { 
         return (index % 2==0) 
         ?const HerMessageBubble() 
         :const MyMessageBubble();
       },)
      ),
      //caja de texto 
     const  MessageFieldBox(),
      ],
      
      ),
    );
  }
}

