import 'dart:io';

agregarPelicula(List<Map<String, dynamic>> cartelera) {
  stdout.write("Título de la película: ");
  String? titulo = stdin.readLineSync();

  stdout.write("Director: ");
  String? director = stdin.readLineSync();

  stdout.write("Género: ");
  String? genero = stdin.readLineSync();

  stdout.write("Año de estreno: ");
  String? anioTexto = stdin.readLineSync();
  int? anio = int.tryParse(anioTexto ?? "");

  if (titulo == null || titulo.isEmpty ||
      director == null || director.isEmpty ||
      genero == null || genero.isEmpty ||
      anio == null) {
    print("Datos inválidos.");
  } else {
    cartelera.add({
      'titulo': titulo,
      'director': director,
      'genero': genero,
      'anio': anio
    });
    print("Película agregada.");
  }
}