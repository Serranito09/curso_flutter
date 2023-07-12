
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
   const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter=0;
  String s=' ';

  @override
  Widget build(BuildContext context) {
  return   Scaffold(//sirve para crear la estructura de la app
    appBar: AppBar(//para editar la  cabecera
        centerTitle: true,
        title:const Text('CounterScreen'),
        actions:[
        IconButton(
          icon:const Icon(Icons.refresh_rounded), 
        onPressed: () {  
          clickCounter=0;
          setState(() {
            
          });

        },) ,
        ],
    ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  //espera un objeto tipo MainAxisAlignment(sirve para alinear)
              children:[
                Text('$clickCounter'
                ,style:const TextStyle(fontSize:160,fontWeight:FontWeight.w100)),
                 Text('Click${ clickCounter==1 ? ' ': 's' }',style:TextStyle(fontSize:25))
              ],
            ) ,
          ),
          floatingActionButton:Column(
              mainAxisAlignment:MainAxisAlignment.end,
            children: [

            CustomButton(
            icon: Icons.plus_one,
             onPressed:(){
           clickCounter++;
            setState(() {});
            },),
           const SizedBox(height: 20,), // Espacio entre los botones
            CustomButton(
            icon: Icons.exposure_minus_1_outlined,
             onPressed:(){
           clickCounter--;
            setState(() {});
            },),
           const SizedBox(height: 20,), // Espacio entre los botones
           CustomButton(
           icon: Icons.refresh_outlined,
           onPressed:(){
           clickCounter=0;
            setState(() {});
            },
           ),
             ],
            )
            );
          

  }
}

class CustomButton extends StatelessWidget {
final IconData icon;
final VoidCallback? onPressed;


  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape:const StadiumBorder(),
      onPressed:onPressed,
      child:Icon(icon),
    );
  }
}