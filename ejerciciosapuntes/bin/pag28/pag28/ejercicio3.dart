/*Define un Map que contenga pares clave-valor donde las claves sean los nombres
de personas y los valores sean la edad. Escribe una función que sume todas las 
edades en el mapa y retorne el total. Luego, crea otra función que determine cuál es 
la edad máxima y mínima en el mapa. Imprime los resultados.*/

void main(){
  var personillas = {
    //Key    : Value
    'Adrián' : 22,
    'Jose' : 20
  };

  print('La suma de todas las edades es: ${sumaEdades(personillas)}');
  print('La edad máxima es: ${edadMaxima(personillas)}');
  print('La edad mínima es: ${edadMinima(personillas)}');
  
}//main


int sumaEdades(Map<String, int> personas) { //le paso un Map llamado X, en este caso personas
  int suma = 0;
  //for in, no un for normal
  for (var edad in personas.values) { // edad variable creada donde voy almacenando las claves del Mapa, que son las edades de las personas -- personas.values para coger SOLO los valores del mapa, no también las claves
    suma += edad;
  }
  return suma;
}//sumaEdades


int edadMaxima(Map<String, int> personas){
  int maximo = personas.values.first; //inicializo la edad maxima en el primer valor que encuentre 
  for (var edad in personas.values) {
    if(edad > maximo){
      maximo = edad;
    }
  }
  return maximo;
}//edadMaxima


int edadMinima(Map<String, int> personas){
  int minimo = personas.values.first; //inicializo la edad minima en el primer valor que encuentre 
  for (var edad in personas.values) {
    if(edad < minimo){
      minimo = edad;
    }
  }
  return minimo;
}//edadMinima