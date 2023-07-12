import 'package:flutter/material.dart';

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
    
    );
  }
}

