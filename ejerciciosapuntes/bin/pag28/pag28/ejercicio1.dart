//Genera una lista de números primos hasta el que el usuario introduzca por consola

import 'dart:io';

void main() {
  print('Introduce un número: ');
  String? limite = stdin.readLineSync(); //la ? la pongo porque puede ser nulo
  int limiteEntero = int.parse(limite!); //parseo de String a int la variable limite
  //las anteriores dos lineas equivalen a : 
  //int limite = int.parse(stdin.readLineSync()!);  //no hace falta que ponga la ? porque se que va a ser un int 100%, pero tengo que chequear si es o no nulo
  
  //recorro todos los números desde 2 hasta el límite dado por el usuario
  for (int numeroActual = 2; numeroActual <= limiteEntero; numeroActual++) {
    bool esPrimo = true;

    //verifico si el número actual es divisible por algún número menor a él
    for (int i = 2; i <= numeroActual ~/ 2; i++) { //'~/' división entera
      if (numeroActual % i == 0) {
        esPrimo = false;
      }//if
    }//for

    //si el número es primo, lo imprimimos
    if (esPrimo) {
      print(numeroActual);
    }//if
  }//for
}//main