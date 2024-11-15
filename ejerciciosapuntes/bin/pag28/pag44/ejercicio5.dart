/*Utiliza la librería http para realizar una petición GET a una API pública (como
JSONPlaceholder). Usa async y await para manejar la respuesta asíncrona y muestra
los datos en consola*/


//REPASAR


import 'dart:io';
 
 
void main(List<String> arguments) async {
  var archivo = File('bin');
 
  archivo.watch().listen((event){
    switch(event.type){
      case FileSystemEvent.create:
        print("Se ha creado ${event.path}");
      case FileSystemEvent.modify:
        print("Se ha modificado ${event.path}");
      case FileSystemEvent.delete:
        print("se ha borrado ${event.path}");
      case FileSystemEvent.move:
        print("se ha movido ${event.path}");
    }
    /*if(event.path=='bin\\archivo.txt' && event.type == FileSystemEvent.modify){
          print("ha sido modificado ");
    }*/
  });
}