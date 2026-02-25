import 'dart:io';

actualizarPelicula(List<Map<String, dynamic>> cartelera) {
  if (cartelera.isEmpty) {
    print("No hay películas para actualizar.");
    return;
  }

  stdout.write("Ingrese el índice: ");
  String? indiceTexto = stdin.readLineSync();
  int? indice = int.tryParse(indiceTexto ?? "");

  if (indice == null || indice < 0 || indice >= cartelera.length) {
    print("Índice inválido.");
    return;
  }

  print("Presione ENTER para dejar el valor actual.");

  stdout.write("Nuevo título (${cartelera[indice]['titulo']}): ");
  String? nuevoTitulo = stdin.readLineSync();

  stdout.write("Nuevo director (${cartelera[indice]['director']}): ");
  String? nuevoDirector = stdin.readLineSync();

  stdout.write("Nuevo género (${cartelera[indice]['genero']}): ");
  String? nuevoGenero = stdin.readLineSync();

  stdout.write("Nuevo año (${cartelera[indice]['anio']}): ");
  String? nuevoAnioTexto = stdin.readLineSync();

  cartelera[indice]['titulo'] =
      (nuevoTitulo == null || nuevoTitulo.isEmpty)
          ? cartelera[indice]['titulo']
          : nuevoTitulo;

  cartelera[indice]['director'] =
      (nuevoDirector == null || nuevoDirector.isEmpty)
          ? cartelera[indice]['director']
          : nuevoDirector;

  cartelera[indice]['genero'] =
      (nuevoGenero == null || nuevoGenero.isEmpty)
          ? cartelera[indice]['genero']
          : nuevoGenero;

  if (nuevoAnioTexto != null && nuevoAnioTexto.isNotEmpty) {
    int? nuevoAnio = int.tryParse(nuevoAnioTexto);
    if (nuevoAnio != null) {
      cartelera[indice]['anio'] = nuevoAnio;
    }
  }

  print("Película actualizada.");
}