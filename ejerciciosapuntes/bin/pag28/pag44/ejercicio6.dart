/*Crea un script que monitoree los cambios en un archivo utilizando dart:io y Streams.
Cada vez que el archivo sea modificado, el script debería imprimir un mensaje
indicando la actualización.*/



//REVISAR



import 'dart:io';
 
 
void main(List<String> arguments) async {
  var archivo = File('bin\\pag28');
 
  archivo.watch().listen((event){
    if(event.path=='bin\\pag28\\pag44\\archivo.txt' && event.type == FileSystemEvent.modify){
         
          print("ha sido modificado ");
 
    }
  });
}


