import 'dart:io';
import 'create.dart';
import 'read.dart';
import 'update.dart';
import 'delete.dart';

void main() {
  List<Map<String, dynamic>> cartelera = [];
  bool salir = false;

  while (!salir) {
    print("\n----- CARTELERA -----");
    print("1. Agregar película");
    print("2. Listar película");
    print("3. Actualizar película");
    print("4. Eliminar película");
    print("5. Salir");
    stdout.write("Elija una opción: ");

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarPelicula(cartelera);
      break;
      case '2':
        listarPeliculas(cartelera);
      break;
      case '3':
        actualizarPelicula(cartelera);
        break;
      case '4':
        eliminarPelicula(cartelera);
        break;
      case '5':
        salir = true;
        print("Programa finalizado.");
        break;
      default:
        print("Opción no válida.");
    }
  }
}