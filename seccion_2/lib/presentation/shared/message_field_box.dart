import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
  
  final colors=Theme.of(context).colorScheme;
  final outlineInputBorder=UnderlineInputBorder(
  borderSide:const  BorderSide(color :Colors.transparent),
  );
    return TextFormField(
    decoration:  InputDecoration(
    enabledBorder: OutlineInputBorder(
   focusedBorder:AbsorbPointer
    borderRadius: BorderRadius.circular(20)
    ),
    filled: true,
    suffixIcon: IconButton( 
    icon: const Icon(Icons.send_outlined),
    onPressed: (){
    
    },
    ),
    
    ),
    );
  }
}