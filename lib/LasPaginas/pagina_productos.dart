import 'package:flutter/material.dart';
import 'pagina_base.dart';

class PaginaProductos extends StatelessWidget {
  const PaginaProductos({super.key});
  @override
  Widget build(BuildContext context) {
    return const PaginaBase(
      titulo: "PRODUCTOS",
      subtitulo: "Catálogo Completo",
      imageUrl: 'https://raw.githubusercontent.com/JenniferSarabia/Imagenes-para-Flutter-6J-11-Febrero/refs/heads/main/Captura%20de%20pantalla%202026-03-11%20115926.png',
    );
  }
}
