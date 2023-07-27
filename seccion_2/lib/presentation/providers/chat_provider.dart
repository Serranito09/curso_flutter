import 'package:flutter/material.dart';
import 'package:seccion_2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{   //notifica cuando hay cambios

List<Message> message=[
Message(text: 'Hola', fromWho: FromWho.mine),
Message(text: 'ya has vuelto?', fromWho: FromWho.mine)

];

Future<void> sendMessage(String text) async{
//TODO implementar metodo
}

}