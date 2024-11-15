/*Programa una calculadora básica. El usuario debe elegir una operación de un menú,
introducir los diferentes números necesarios, y saldrá por pantalla la operación adecuada*/

import 'dart:io';

void main() {
  print('Elige la operación que quiere realizar: \n 1. Suma \n 2. Resta \n 3. Multiplicación \n 4. División');
  int opcion = int.parse(stdin.readLineSync()!);

  //comprobar que la opcion esta entre 1 y 4

  print('Introduce el primer número:');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Introduce el segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  double resultado;

  switch (opcion){
    case 1:
      resultado = num1 + num2;
      print('La suma de $num1 + $num2 es $resultado.');
      break;
    case 2:
      resultado = num1 - num2;
      print('La suma de $num1 - $num2 es $resultado.');
      break;
    case 3:
      resultado = num1 * num2;
      print('La suma de $num1 * $num2 es $resultado.');
      break;
    case 4:
      resultado = num1 / num2;
      print('La suma de $num1 + $num2 es $resultado.');
      break;
    default: 
      print('Opción no válida.');
  }//switch
}//main