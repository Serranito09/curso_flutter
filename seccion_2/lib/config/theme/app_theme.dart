
import 'package:flutter/material.dart';

const Color customColor=Color.fromRGBO(85, 102, 68, 1);
const List <Color> colorThemes=[
customColor,
Colors.blue,
Colors.green,
Colors.pink,
Colors.red,
Colors.orange,


];

class AppTheme{
final int selectedColor;
  AppTheme({this.selectedColor=0}): 
  assert(selectedColor >=0 && selectedColor <= colorThemes.length -1,
  'Color must be between 0 and ${colorThemes.length}');
  ThemeData theme(){
    return ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorThemes[selectedColor],//sirve para selecionar el color del boton que queremos
    );
    
  }

}