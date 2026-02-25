listarPeliculas(List<Map<String, dynamic>> cartelera) {
  if (cartelera.isEmpty) {
    print("No hay películas registradas.");
  } else {
    for (int i = 0; i < cartelera.length; i++) {
      print("[$i] "
          "${cartelera[i]['titulo']} - "
          "${cartelera[i]['director']} - "
          "${cartelera[i]['genero']} - "
          "${cartelera[i]['anio']}");
    }
  }
}