import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
  final textController=TextEditingController();  //para controlar la caja de texto
  final FocusNode focusNode= FocusNode();  //nos servira para que cuando se mande un mesanje siga abierta la caja de texto
  
  final outlineInputBorder=UnderlineInputBorder(
  borderSide:const  BorderSide(color :Colors.transparent),
  borderRadius: BorderRadius.circular(40));
  final inputDecoration=InputDecoration(
  hintText: 'End your message whith a "??"',
    enabledBorder: outlineInputBorder,
   focusedBorder:outlineInputBorder,
  
    filled: true,
    suffixIcon: IconButton( 
    icon: const Icon(Icons.send_outlined),
    onPressed: (){
    final textValue= textController.value.text;
      print('Valor de la caja de texto= $textValue');
      textController.clear();
    },
    ),
    );
  
  
  //caja de texto
    return TextFormField(
    onTapOutside: (event) {
      focusNode.unfocus();
    },
    focusNode: focusNode,
    controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('value mandado como $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
    
  }
}