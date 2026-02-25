import 'dart:io';

eliminarPelicula(List<Map<String, dynamic>> cartelera) {
  if (cartelera.isEmpty) {
    print("No hay películas para eliminar.");
    return;
  }

  stdout.write("Ingrese el índice: ");
  String? indiceTexto = stdin.readLineSync();
  int? indice = int.tryParse(indiceTexto ?? "");

  if (indice == null || indice < 0 || indice >= cartelera.length) {
    print("Índice inválido.");
  } else {
    cartelera.removeAt(indice);
    print("Película eliminada.");
  }
}