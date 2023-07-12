import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter_screen.dart';

void main(){
  runApp(const MyApp());//sirve para inicializar la app
  
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
//para crear el override control+. y seleccionar el metodo
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(//sirve para crear la app
      debugShowCheckedModeBanner: false,//sirve para quitar el banner de debug
    theme: ThemeData( //para adaptar el fondo
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
     ),
     
      home:  const CounterScreen()
      );
    
  }
  
}